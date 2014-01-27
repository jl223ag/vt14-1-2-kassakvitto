<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <h1>Kassakvitto</h1>
    <form id="form1" runat="server" method="post">
    <div>
        <p><asp:Label ID="InfoText" runat="server" Text="Fyll i total köpsumma:"></asp:Label></p>
        <p><asp:TextBox ID="InputField" runat="server" autofocus="autofocus"></asp:TextBox> Kr</p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fältet får inte vara tomt!" ControlToValidate="InputField" Display="Dynamic" CssClass="red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Summan måste vara större än 0!" ControlToValidate="InputField" Display="Dynamic" Operator="GreaterThan" Type="Double" ValueToCompare="0" CssClass="red"></asp:CompareValidator>
        <p><asp:Label ID="ErrorText" runat="server" Text=""></asp:Label></p>        
        <p><asp:Button ID="CalcDiscount" runat="server" Text="Beräkna rabatt" OnClick="CalcDiscount_Click" /></p>
    </div>
    </form>
    <asp:Panel ID="receiptBox" runat="server" CssClass="HideThis">
        <asp:Label ID="ReceiptH1" runat="server" Text=""></asp:Label>
        <asp:Label ID="ReceiptHeader" runat="server" Text=""></asp:Label>
        <div><asp:Label ID="ReceiptBody1" runat="server" Text=""></asp:Label></div>
        <div><asp:Label ID="ReceiptBody2" runat="server" Text=""></asp:Label></div>
        <div><asp:Label ID="ReceiptBody3" runat="server" Text=""></asp:Label></div>
        <div><asp:Label ID="ReceiptBody4" runat="server" Text=""></asp:Label></div>
        <div><asp:Label ID="ReceiptBody5" runat="server" Text=""></asp:Label></div>
        <div><asp:Label ID="ReceiptBody6" runat="server" Text=""></asp:Label></div>
        <div><asp:Label ID="ReceiptBody7" runat="server" Text=""></asp:Label></div>
        <div><asp:Label ID="ReceiptBody8" runat="server" Text=""></asp:Label></div>
        <asp:Label ID="ReceiptFooter" runat="server" Text=""></asp:Label>
    </asp:Panel>
    <script src="script/script.js"></script>
</body>
</html>
