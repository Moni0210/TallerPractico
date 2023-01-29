<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="RegistrarHora.aspx.vb" Inherits="Proye1admiBD.Formulario_web16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container d-flex justify-content-center">
            <div class="col-8">
                <div class="form-control card card-body">
                    <div class="row justify-content-center">
                        <asp:Label runat="server" CssClass="row justify-content-center h3">Horarios</asp:Label>
                    </div>
                    <fieldset>
                        <legend class="row justify-content-center">Horas</legend>

                        <div class="input-group">
                            <asp:Label ID="Label8" runat="server" Text="Hora de Inicio:"></asp:Label>
                            <asp:TextBox ID="tbHoraI" CssClass="form-control" runat="server" ></asp:TextBox>

                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="Hora Final"></asp:Label>
                            <asp:TextBox ID="tbHoraF" CssClass="form-control" runat="server" ></asp:TextBox>
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
                    
                   
                    <div class="row">
                        <asp:Button ID="BtnIngresar" CssClass=" form-control btn btn-primary " runat="server" Text="Registrar horas" BackColor="#E9ECEF" BorderStyle="None" OnClick="BtnIngresar_Click" />
                        <hr />

                        <asp:Button ID="Button1" CssClass=" form-control btn btn-primary " runat="server" Text="Cancelar" BackColor="#E9ECEF" BorderStyle="None" OnClick="Button1_Click" />
                    </div>

                    <asp:Label ID="Label9" runat="server" Text="1" Visible="False"></asp:Label>
                    &nbsp;<asp:Label ID="Label10" runat="server" Text="11" Visible="False"></asp:Label>
                  <%--  <asp:Button ID="Button2" runat="server" Text="Seleccionar datos" CssClass=" form-control btn btn-primary" />--%>
                </div>
            </div>
            
        </div>
</asp:Content>
