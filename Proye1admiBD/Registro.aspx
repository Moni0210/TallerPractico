<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registro.aspx.vb" Inherits="Proye1admiBD.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" <%--integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"--%> />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" <%--integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"--%> <%--crossorigin="anonymous"--%>></script>
    <script src="../JavaScript/JavaScript.js"></script>
    <title>Registro de usuarios</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container d-flex justify-content-center">
            <div class="col-8">
                <div class="form-control card card-body">
                    <div class="row justify-content-center">
                        <asp:Label runat="server" CssClass="row justify-content-center h3">Registro de usuarios</asp:Label>
                    </div>
                    <fieldset>
                        <legend class="row justify-content-center">Datos personales</legend>

                        <div class="input-group">
                            <asp:Label ID="Label8" CssClass="form-control" runat="server" Text="Identificacion:"></asp:Label>
                            <asp:TextBox ID="tbId" CssClass="form-control" runat="server" placeholder="ej. 114050314"></asp:TextBox>

                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="Nombres:"></asp:Label>
                            <asp:TextBox ID="tbNombres" CssClass="form-control" runat="server" placeholder="ej.Nombre"></asp:TextBox>
                        </div>

                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label2" CssClass="form-control" runat="server" Text="Primer Apellido:"></asp:Label>
                            <asp:TextBox ID="tbApellidos1" CssClass="form-control" runat="server" placeholder="ej.Apellido"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label3" CssClass="form-control" runat="server" Text="Segundo Apellido:"></asp:Label>
                            <asp:TextBox ID="tbApellidos2" CssClass="form-control" runat="server" placeholder="ej. Velasquez"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label4" CssClass="form-control" runat="server" Text="Fecha de Nacimiento:"></asp:Label>
                            <asp:TextBox ID="tbFecha" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label6" CssClass="form-control" runat="server" Text="Correo Electronico:"></asp:Label>
                            <asp:TextBox ID="tbCorreo" CssClass="form-control" runat="server" placeholder="...@gmail.com"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label5" CssClass="form-control" runat="server" Text="Telefono:"></asp:Label>
                            <asp:TextBox ID="TbTelefono" CssClass="form-control" runat="server" placeholder="ej. 86984387"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label7" CssClass="form-control" runat="server" Text="Contraseña:"></asp:Label>
                            <asp:TextBox ID="TbContrasena" CssClass="form-control" runat="server" placeholder="Contraseña"></asp:TextBox>
                        </div>

                        <br />
                        <div class="input-group">
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>

                          <%--  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdmiProyecto1ConnectionString %>" SelectCommand="SELECT * FROM [EstadoUsuario]"></asp:SqlDataSource>--%>

                        </div>

                    </fieldset>

                    <br />
                    <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    <div class="row">
                        <asp:Button ID="BtnIngresar" CssClass=" form-control btn btn-primary " runat="server" Text="Ingresar" BackColor="#E9ECEF" BorderStyle="None" OnClick="BtnIngresar_Click" />
                        <hr />

                        <asp:Button ID="Button1" CssClass=" form-control btn btn-primary " runat="server" Text="Cancelar" BackColor="#E9ECEF" BorderStyle="None" OnClick="Button1_Click" />
                    </div>

                  <%--  <asp:Button ID="Button2" runat="server" Text="Seleccionar datos" CssClass=" form-control btn btn-primary" />--%>
                </div>
            </div>
            
        </div>
        <%--<%--<asp:GridView ID="Datos1" runat="server">--%>
     <%--   </asp:GridView>--%>
    </form>
</body>
</html>
