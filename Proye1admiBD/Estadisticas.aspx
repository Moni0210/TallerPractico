<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="Estadisticas.aspx.vb" Inherits="Proye1admiBD.Formulario_web114" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 302px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <footer class="footer1">
        <div class="contenedor1">

            <div class="col1">
                <h1>Estadísticas</h1>
                <br />
                <br />
                <div>
                    <%--<div class="auto-style1">
                        <asp:Button ID="Button2" CssClass="  btn btn-primary " runat="server" Text="Sobre Nosotros" BackColor="white" BorderStyle="None" ForeColor="Black" />
                    </div>--%><a href="Estadisticas.aspx">Estadisticas.aspx</a>

                    <div class="auto-style1">
                        <asp:Button ID="Button1" CssClass="  btn btn-primary " runat="server" Text="Analisis de Cancelacion de Citas" BackColor="#BDD489" BorderStyle="None" Style="margin-left: 0" Width="298px" />
                        <br />
                        <br />
                    </div>

                    <div>
                        <asp:Button ID="Button2" CssClass="  btn btn-primary " runat="server" Text="Analisis de cita canceladas por fechas" BackColor="#D4E3B3" BorderStyle="None" Width="298px" />
                        <br />
                        <br />
                    </div>
                    <div>
                        <asp:Button ID="Button3" CssClass="  btn btn-primary " runat="server" Text="Analisis de citas por día" BackColor="#BDD489" BorderStyle="None" Width="298px" />
                        <br />
                        <br />
                    </div>

                    <div>
                        <asp:Button ID="Button4" CssClass="  btn btn-primary " runat="server" Text="Analisis de citas por mes" BackColor="#BDD489" BorderStyle="None" Width="298px" />
                        <br />
                        <br />
                    </div>

                    <div>
                        <asp:Button ID="Button5" CssClass="  btn btn-primary " runat="server" Text=" Analisis de Estadisticas" BackColor="#BDD489" BorderStyle="None" Width="298px" />
                    </div>
                </div>

            </div>

            <div class="col14">
                <div class="m">
                    <img src="Imagenes/lg-850-casos-clinicos-dermatologia.jpg">
                </div>

            </div>
        </div>
    </footer>


</asp:Content>
