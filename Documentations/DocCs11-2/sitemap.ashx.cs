using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
using System.IO;
using System.Data.Common;
using System.Web.UI;

namespace DocCs
{
    /// <summary>
    /// Summary description for sitemap
    /// </summary>
    public class sitemap : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //GetXmlToShow will look for parameters from the context
            XmlDocument doc = GetXmlToShow(context);

            //Don't forget to set a valid xml type.
            //If you leave the default "text/html", the browser will refuse to display it correctly
            context.Response.ContentType = "text/xml";

            //We'd like UTF-8.
            context.Response.ContentEncoding = System.Text.Encoding.UTF8;
            //context.Response.ContentEncoding = System.Text.Encoding.UnicodeEncoding; //But no reason you couldn't use UTF-16:
            //context.Response.ContentEncoding = System.Text.Encoding.UTF32; //Or UTF-32
            //context.Response.ContentEncoding = new System.Text.Encoding(500); //Or EBCDIC (500 is the code page for IBM EBCDIC International)
            //context.Response.ContentEncoding = System.Text.Encoding.ASCII; //Or ASCII
            //context.Response.ContentEncoding = new System.Text.Encoding(28591); //Or ISO8859-1
            //context.Response.ContentEncoding = new System.Text.Encoding(1252); //Or Windows-1252 (a version of ISO8859-1, but with 18 useful characters where they were empty spaces)

            //Tell the client don't cache it (it's too volatile)
            //Commenting out NoCache allows the browser to cache the results (so they can view the XML source)
            //But leaves the possiblity that the browser might not request a fresh copy
            //context.Response.Cache.SetCacheability(HttpCacheability.NoCache);

            //And now we tell the browser that it expires immediately, and the cached copy you have should be refreshed
            context.Response.Expires = -1;

            context.Response.Cache.SetAllowResponseInBrowserHistory(true); //"works around an Internet&nbsp;Explorer bug"

            doc.Save(context.Response.Output); //doc saves itself to the textwriter, using the encoding of the text-writer (which comes from response.contentEncoding)

            #region Notes
            /*
             * 1. Use Response.Output, and NOT Response.OutputStream.
             *  Both are streams, but Output is a TextWriter.
             *  When an XmlDocument saves itself to a TextWriter, it will use the encoding
             *  specified by the TextWriter. The XmlDocument will automatically change any
             *  XML declaration node, i.e.:
             *     <?xml version="1.0" encoding="ISO-8859-1"?>
             *  to match the encoding used by the Response.Output's encoding setting
             * 2. The Response.Output TextWriter's encoding settings comes from the
             *  Response.ContentEncoding value.
             * 3. Use doc.Save, not Response.Write(doc.ToString()) or Response.Write(doc.InnerXml)
             * 3. You DON'T want to save the XML to a string, or stuff the XML into a string
             *  and response.Write that, because that
             *   - doesn't follow the encoding specified
             *   - wastes memory
             *
             * To sum up: by Saving to a TextWriter: the XML Declaration node, the XML contents,
             * and the HTML Response content-encoding will all match.
             */
            #endregion Notes        
        }

        private XmlDocument GetXmlToShow(HttpContext context)
        {
            //Use context.Request to get the account number they want to return
            //GET /GetPatronInformation.ashx?accountNumber=619

            string schema = "http://www.sitemaps.org/schemas/sitemap/0.9";

            //Or since this is sample code, pull XML out of your rear:
            XmlDocument doc = new XmlDocument();
            doc.LoadXml("<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd\"></urlset>");

            SiteMapNodeCollection pages = SiteMap.RootNode.GetAllNodes();
            foreach (SiteMapNode sitemapnode in pages)
            {
                {
                    XmlElement urlElement = doc.CreateElement("url", schema);
                    doc.DocumentElement.AppendChild(urlElement);

                    XmlElement locElement = doc.CreateElement("loc", schema);
                    locElement.AppendChild(doc.CreateTextNode("https://doc.alvao.com" + sitemapnode.Url));
                    urlElement.AppendChild(locElement);

                    XmlElement lastMod = doc.CreateElement("lastmod", schema);
                    string filePath = HttpContext.Current.Server.MapPath(sitemapnode.Url);
                    DateTime lastModDateTime = System.IO.File.GetLastWriteTime(filePath);
                    if (lastModDateTime.Year < 2000)
                        lastModDateTime = new DateTime(2000, 1, 1);
                    lastMod.AppendChild(doc.CreateTextNode(string.Format("{0:yyyy-MM-dd}", lastModDateTime)));
                    urlElement.AppendChild(lastMod);
                }
            }

            return doc;
        }


        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}