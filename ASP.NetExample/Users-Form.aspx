﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users-Form.aspx.cs" Inherits="ASP.NetExample.Users_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Hello World!</h1>
            <asp:HyperLink ID="HyperLink1" 
                runat="server" 
                NavigateUrl="http://www.google.com">GOOGLE</asp:HyperLink><%--have to come with http://--%>
        </div>
    </form>
</body>
</html>
