<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="Inicio.aspx.vb" Inherits="Proye1admiBD.Formulario_web1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        /*height: 50px;*/margin-top: 30px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <footer class="footer1">
        <div class="contenedor1">

            <div class="col1">
                <h1>Bienvenidos a SkinCare</h1>
                <p>Nos especializamos en soluciones integrales para los trastornos de piel, con un enfoque vanguardista que incluye el área médica, estética y quirúrgica, además de un seguimiento personalizado.</p>
                <div>
                    <div class="auto-style1">
                        <asp:Button ID="Button2" CssClass="  btn btn-primary " runat="server" Text="Sobre Nosotros" BackColor="white" BorderStyle="None" ForeColor="Black" />
                    </div>
                    <div class="col13">
                        <asp:Button ID="Button1" CssClass="  btn btn-primary " runat="server" Text="Sacar una cita" BackColor="#BDD489" BorderStyle="None" />
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
