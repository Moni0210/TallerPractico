<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="nathaliaramirez.aspx.vb" Inherits="Proye1admiBD.nathalia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblNathalia" runat="server" Text="Nombre: Nathalia"></asp:Label>
            <br />
            <asp:Button ID="btnCambiarColor" runat="server" Text="Cambiar Color" />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="https://upload.wikimedia.org/wikipedia/commons/d/df/Cane_Corso_Barcelona_02.jpg" />
        </div>
    </form>
</body>
</html>
