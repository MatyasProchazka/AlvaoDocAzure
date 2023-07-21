using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;

namespace DocEn
{
    public partial class attachment : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(@"
                    	
                    select * from Custom.KnownIssueAttachment where iDocumentId=@documentId", con))
                {
                    cmd.Parameters.Add("@documentId", SqlDbType.Int).Value = Page.RouteData.Values["id"];

                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            Response.Clear();
                            Response.ContentType = reader["sDocumentContentType"] as string;
                            Response.AppendHeader("Content-Disposition", string.Format("attachment; filename=\"{0}\"", reader["sDocument"]));

                            int chunkSize = 1024;
                            int bytesRead = 0;
                            byte[] buffer = new byte[chunkSize];
                            using (Stream cabStream = new MemoryStream(reader["oDocument"] as byte[]))
                            {
                                int ret = -1;
                                while (bytesRead < cabStream.Length)
                                {
                                    ret = cabStream.Read(buffer, 0, chunkSize);
                                    if (ret > 0)
                                    {
                                        Response.OutputStream.Write(buffer, 0, ret);
                                        bytesRead += ret;
                                    }
                                }
                            }
                            Response.End();
                        }
                        else
                        {
                            Response.StatusCode = (int)HttpStatusCode.NotFound;
                            Response.End();
                        }
                    }
                }
            }




        }
    }
}