<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="Graficocancelaciones.aspx.vb" Inherits="Proye1admiBD.Formulario_web115" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
    <div class="container d-flex justify-content-center">
        <div class="col-8">
            <div class="form-control card card-body">
                <div class="row justify-content-center">
                    <asp:Label runat="server" CssClass="row justify-content-center h3"> Lista de Citas Canceladas</asp:Label>


                </div>

                <fieldset>

                    <legend class="row justify-content-center">Usuarios</legend>
                    <br />
                  
                    <div class="input-group">
                       <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="Seleccionar opción:"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" >
                            <asp:ListItem Value="0">Selecionar cancelaciones por fecha</asp:ListItem>
                            <asp:ListItem Value="1">Seleccionar cancelaciones por cantidad</asp:ListItem>
                        </asp:DropDownList>
                         &nbsp;
                        <asp:ImageButton ID="ImageButton2" runat="server" BorderStyle="None" Height="26px" ImageUrl="~/Imagenes/buscar3.png" Width="24px" />
                    </div>
                   
                    <br />

                </fieldset>
              

                <div class="row">

              
                    <br>
                </div>

                <%--   </asp:GridView>--%>
        

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

    </div>
        </div>



        <br />
    </div>
</asp:Content>
