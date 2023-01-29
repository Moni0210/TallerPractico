<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="Eliminar usuario.aspx.vb" Inherits="Proye1admiBD.Formulario_web12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container d-flex justify-content-center">
        <div class="col-8">
            <div class="form-control card card-body">
                <div class="row justify-content-center">
                    <asp:Label runat="server" CssClass="row justify-content-center h3">Eliminar Usuario</asp:Label>
                </div>
                <fieldset>
                    <legend class="row justify-content-center">Datos personales</legend>

                    <div class="input-group">
                        <asp:Label ID="Label8" CssClass="form-control" runat="server" Text="Identificacion:"></asp:Label>
                        <asp:TextBox ID="tbId" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <div class="input-group">
                        <asp:Label ID="Label7" CssClass="form-control" runat="server" Text="Contraseña:"></asp:Label>
                        <asp:TextBox ID="TbContrasena" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </fieldset>

                <br />
                <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                <br />
                <div class="row">
                    <asp:Button ID="Button12" runat="server" Text="Eliminar Usuario" BorderStyle="None" ForeColor="Gray" CssClass=" form-control btn btn-primary " BackColor="#E9ECEF" />
                    <hr />

                </div>

                <asp:Label runat="server" ID="Label9" Visible="False">1</asp:Label>
                <%--  <asp:Button ID="Button2" runat="server" Text="Seleccionar datos" CssClass=" form-control btn btn-primary" />--%>
            </div>
        </div>

    </div>
</asp:Content>
