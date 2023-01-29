<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="ListaporFechas.aspx.vb" Inherits="Proye1admiBD.Formulario_web110" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container d-flex justify-content-center">
            <div class="col-8">
                <div class="form-control card card-body">
                    <div class="row justify-content-center">
                        <asp:Label runat="server" CssClass="row justify-content-center h3">Lista de usuarios</asp:Label>
                    </div>
                    <fieldset>
                        <legend class="row justify-content-center">Usuarios</legend>

                        <br />
                     
                        <div class="input-group">
                            <asp:Label ID="Label4" CssClass="form-control" runat="server" Text="Fecha Inicial:"></asp:Label>
                            <asp:TextBox ID="tbFecha1" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            
                        </div>
                        <br />
                        <div class="input-group">
 <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="Fecha Final:"></asp:Label>
                            <asp:TextBox ID="Tbfecha2" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>

                         </div>
                        <br />
                        
                    </fieldset>

                    <br />
                    <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                    <br />
                    <div class="row">
                        <asp:Button ID="BtnIngresar" CssClass=" form-control btn btn-primary " runat="server" Text="Cargar lista" BackColor="#E9ECEF" BorderStyle="None" OnClick="BtnIngresar_Click" ForeColor="Black" />
                        <hr />

                        <br />
                     
                    </div>

                    
 
                </div>
            </div>
            
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
    <asp:Label runat="server" CssClass="alert-danger" ID="Label2"></asp:Label>
    <br />

</asp:Content>
