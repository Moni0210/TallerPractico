<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Consultar.aspx.vb" Inherits="Proye1admiBD.Consultar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" <%--integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"--%> />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" <%--integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"--%> <%--crossorigin="anonymous"--%>></script>
    <script src="../JavaScript/JavaScript.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="container d-flex justify-content-center">
                <div class="col-8">
                    <div class="form-control card card-body">
                        <div class="row justify-content-center">
                            <asp:Label runat="server" CssClass="row justify-content-center h3"> Lista de Usuarios</asp:Label>


                        </div>

                        <fieldset>

                            <legend class="row justify-content-center">Usuarios</legend>
                            <br />
                            <hr />
                            <div class="container d-flex justify-content-center">
                                <div class="table small">


                                    <asp:GridView runat="server" ID="Datos" class="table table-borderless table-hover">
                                    </asp:GridView>
                                </div>
                            </div>
                            <div class="container d-flex justify-content-center">
                                <div class="table small">
                                </div>
                            </div>
                            <br />
                            <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                            <br />
                        </fieldset>

                        <br />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
