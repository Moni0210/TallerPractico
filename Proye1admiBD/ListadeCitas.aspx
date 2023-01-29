<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="ListadeCitas.aspx.vb" Inherits="Proye1admiBD.Formulario_web19" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container d-flex justify-content-center">
        <div class="col-8">
            <div class="form-control card card-body">
                <div class="row justify-content-center">
                    <asp:Label runat="server" CssClass="row justify-content-center h3"> Lista de Citas</asp:Label>


                </div>

                <fieldset>

                    <legend class="row justify-content-center">Usuario</legend>
                    <br />
                    <div class="input-group">

                        <asp:TextBox ID="Tbidentificacion" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <br />

                </fieldset>
              

                <div class="row">

              
                    <asp:Button ID="Button1" runat="server" Text="Cargar lista" CssClass=" form-control btn btn-primary" BackColor="#E9ECEF" BorderStyle="None" />
                    <br>
                </div>

                <%--   </asp:GridView>--%>
            </div>
        </div>



        <br />
    </div>

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
</asp:Content>
