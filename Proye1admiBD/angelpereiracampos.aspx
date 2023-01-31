<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="angelpereiracampos.aspx.vb" Inherits="Proye1admiBD.angelpereiracampos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label> Hola soy Angel</label>
             
        </div>
        <asp:Button ID="Button1" runat="server" Text="camiar color" style="height: 26px" OnClick="cambiar" />
        
        <p>
        
        <asp:Image ID="Image1" runat="server" Height="123px" ImageUrl="~/Imagenes/ce63475562f960ede351c2533415adc5.jpg" Width="251px" />
        </p>
    </form>
</body>
</html>
