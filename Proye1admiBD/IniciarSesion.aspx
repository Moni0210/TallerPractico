<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IniciarSesion.aspx.vb" Inherits="Proye1admiBD.IniciarSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="../estilosIngresar.css" rel="stylesheet" />
    <link href="Ingresar.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


    <title>login</title>
</head>
<body class="bg-light">

    <div class="wrapper">
        <div class="formcontent">
            <form id="form1" runat="server">
                <div class="form-control">
                    <div class="col-md-6 text-center nb-5">
                        <br />
                        <br />
                        <%--<img src="Imagenes/logo3.png" alt="" class="img"/>--%>
                        <br />
                        <br />

                    </div>

                    <%--usuario--%>
                    <div>
                        <asp:Label ID="Lblususario" runat="server" Text="Usuario"></asp:Label>
                        <asp:TextBox ID="TxtUsusario" CssClass="form-control" runat="server" placeholder="Nombre de Usuario"></asp:TextBox>
                        <br />
                    </div>
                    <%-- Contraseña--%>
                    <div>
                        <asp:Label ID="LblContrasena" runat="server" Text="Contraseña"></asp:Label>
                        <asp:TextBox ID="Txtcontrasena" CssClass="form-control" runat="server" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                    </div>
                    <br />

                    <br />
                </div>
                <br />
                <br />
                <%-- Boton ingresar--%>
                <div <%--class="row"--%>>

                    <asp:Button ID="BtnIngresar" CssClass="form-control btn btn-primary " runat="server" Text="Ingresar" BackColor="#E9ECEF" BorderStyle="None" OnClick="BtnIngresar_Click" />
                    <asp:Label ID="Lblerror" runat="server" Text=" " CssClass="texto"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />

                </div>

            </form>
        </div>

    </div>
</body>
</html>
