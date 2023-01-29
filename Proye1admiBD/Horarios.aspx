<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Horarios.aspx.vb" Inherits="Proye1admiBD.Horarios" %>

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
                        <asp:Label runat="server" CssClass="row justify-content-center h3">Horarios</asp:Label>
                    </div>
                    <fieldset>
                        <legend class="row justify-content-center">Horas</legend>

                         <div class="input-group">
                            <asp:Label ID="Label4" CssClass="form-control" runat="server" Text="Fecha de Cita:"></asp:Label>
                            <asp:TextBox ID="tbFecha" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                        <br />

                        <div class="input-group">
                            <asp:Label ID="Label8" CssClass="form-control" runat="server" Text="Hora de Inicio:"></asp:Label>
                            <asp:TextBox ID="tbHoraI" CssClass="form-control" runat="server" ></asp:TextBox>

                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="Hora Final"></asp:Label>
                            <asp:TextBox ID="tbHoraF" CssClass="form-control" runat="server" placeholder="ej. Monica"></asp:TextBox>
                        </div>

                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label2" CssClass="form-control" runat="server" Text="Duracion:"></asp:Label>
                            <asp:TextBox ID="tbDuracion" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                        <br />
    </fieldset>
                    <br />
                    <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                    
                    <br />
                    <div class="row">
                        <asp:Button ID="BtnIngresar" CssClass=" form-control btn btn-primary " runat="server" Text="Registrar horas" BackColor="#E9ECEF" BorderStyle="None" OnClick="BtnIngresar_Click" />
                        <hr />

                        <asp:Button ID="Button1" CssClass=" form-control btn btn-primary " runat="server" Text="Cancelar" BackColor="#E9ECEF" BorderStyle="None" OnClick="Button1_Click" />
                    </div>

                    <asp:Label ID="Label9" runat="server" Text="1" Visible="False"></asp:Label>
                    <asp:Label ID="Label10" runat="server" Text="11" Visible="False"></asp:Label>
                  <%--  <asp:Button ID="Button2" runat="server" Text="Seleccionar datos" CssClass=" form-control btn btn-primary" />--%>
                </div>
            </div>
            
        </div>
        <%--<%--<asp:GridView ID="Datos1" runat="server">--%>     <%--   </asp:GridView>--%>
    </form>
</body>
</html>
