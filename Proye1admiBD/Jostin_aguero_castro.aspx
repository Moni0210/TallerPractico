<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Jostin_aguero_castro.aspx.vb" Inherits="Proye1admiBD.Jostin_aguero_castro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl_Jostin" runat="server" Text="Nombre: Jostin"></asp:Label>
            <br />
            <asp:Button ID="btn_cambiarColor" runat="server" Text="Cambiar color"/>
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="https://imagenes.elpais.com/resizer/Wv9BlwbAvp6mH6aJDwuZH2JCeh8=/414x0/cloudfront-eu-central-1.images.arcpublishing.com/prisa/SMAGZKMKUVK5UPZUPANHV4TYBA.jpg" />
        </div>
    </form>
</body>
</html>
