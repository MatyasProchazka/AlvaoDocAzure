<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Glossary</h1>
    <ul>
        <li><strong>Agent</strong> - an agent is an application (Win9x) or service (NT, 2000, XP, Vista, 7) running on a client computer and providing remote data collection, installation of software packages and communication with ALVAO Asset Management.</li>
        <li><strong>Inheritance</strong> - see <a href="#dict.prop.inherited">inherited property</a>.</li>
        <li><strong>Uniqueness</strong> - a property can be set to be unique. If uniqueness is enabled, then the <em>Uniqueness Check</em> feature can be used. This function will check if the selected property occurs with the same value multiple times and list the uniqueness violations for all properties that have been defined as such.</li>
        <li><strong>Classification property</strong> - a property that specifies the type of object, e.g. &quot;monitor&quot;, &quot;processor&quot;, &quot;room&quot; etc. Every object must have this property. It implicitly serves as a classification property <em>Type</em>.</li>
        <li><strong>Tree Root</strong>
            <br />
            <img src="glossary/Root.gif" />
            <p>An object that is located at the root of a tree, i.e. has no parent object.</p>
        </li>
        <li><strong>Parent object</strong> </li>
        <li><strong>Object</strong> - An object is the basic building block of a tree database. Each object represents one node of the tree.<br />
            An object consists of:<ul>
                <li>object name</li>
                <li>icons</li>
                <li>properties</li>
                <li>notes</li>
                <li>history records</li>
                <li>child objects</li>
            </ul>
        </li>
        <li><strong>Root object</strong> - see <a href="#dict.root">tree root</a>.</li>
        <li><strong>Child object</strong></li>
        <li><strong>Subtree</strong>
            <br />
            <img src="glossary/Subtree.gif" />
            <br />
            A part of a tree including one specific object (the root of the subtree), its child objects, the child objects of the child objects, etc.</li>
        <li><strong>Object child</strong> - one of the child objects or one of the child objects of the child objects, etc.</li>
        <li><strong>Object ancestor</strong> - a parent object, a parent object of a parent object, etc.</li>
        <li><strong>Tree</strong>
            <br />
            <img src="glossary/Tree.gif" />
            <br />
            A hierarchical structure composed of objects. Each object can have one or more child objects (sons) and at the same time be a child of another object (parent object, father).
        </li>
        <li><strong>Object Template</strong> - a pattern by which new objects are created.</li>
        <li><strong>Property</strong> - information that describes a particular characteristic of an object. Each object can be described by several properties, such as Size, Color.</li>
        <li><strong>Custom property</strong> - a property that is part of the object (not inherited).</li>
        <li><strong>Inherited property</strong>
            <br />
            <img src="glossary/Inh.gif" />
            <br />
            A property that is inherited into an object from one of its ancestors.</li>
        <li><strong>WMI</strong> - Windows Management Instrumentation (WMI) is a system for managing system information based on a standardized object-oriented interface.</li>
        <li><strong>Tab</strong> - At the bottom of the Properties and History windows are tabs that serve as filters.</li>
    </ul>

</asp:Content>
