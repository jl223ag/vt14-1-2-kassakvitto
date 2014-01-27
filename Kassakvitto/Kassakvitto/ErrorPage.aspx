<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="Kassakvitto.ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <h1>Felmeddelande</h1>
    <form id="form1" runat="server">
    <div>
        <p><asp:Label ID="ErrorCode" runat="server" Text="Label">Error! Något gick snett</asp:Label></p>
        <p><asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl="~/Default.aspx">Tillbaka till startsidan</asp:HyperLink></p>
    </div>
    </form>
</body>
</html>
