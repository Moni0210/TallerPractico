<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="Informes.aspx.vb" Inherits="Proye1admiBD.Formulario_web120" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <footer class="footer1">
        <div class="contenedor1">

            <div class="col1">
                <h1>Estadísticas</h1>
                <br />
                <br />
                <div>
                    <div class="auto-style1">
                        <br />
                        <asp:Button ID="Button1" CssClass="  btn btn-primary " runat="server" Text="Resumen de Citas por estado" BackColor="#BDD489" BorderStyle="None" Style="margin-left: 0" Width="298px" />
                        <br />
                        <br />
                    </div>

                    <div>
                        <asp:Button ID="Button2" CssClass="  btn btn-primary " runat="server" Text="Reporte de distribución de citas por estado y horas" BackColor="#D4E3B3" BorderStyle="None" Width="298px" />
                        <br />
                        <br />
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
