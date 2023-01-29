<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="ListaCitasOrdenadas.aspx.vb" Inherits="Proye1admiBD.Formulario_web118" %>

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

                    <legend class="row justify-content-center">Analisis</legend>
                    <br />
                    <div class="input-group">
                        <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="Elija una opción:"></asp:Label>
                        &nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                            <asp:ListItem Value="1">Nombre</asp:ListItem>
                            <asp:ListItem Value="2">Cantidad de citas</asp:ListItem>
                            <asp:ListItem Value="3">Citas Canceladas</asp:ListItem>
                            <asp:ListItem Value="4">Citas Efectivas</asp:ListItem>
                            <asp:ListItem Value="5">Citas Perdidas</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Label ID="Label2" CssClass="form-control" runat="server" Text="Elija una opción:"></asp:Label>
                        &nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                            <asp:ListItem Value="1">Descendente</asp:ListItem>
                            <asp:ListItem Value="2">Ascendente</asp:ListItem>
                        
                        </asp:DropDownList>
                        &nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" BorderStyle="None" Height="26px" ImageUrl="~/Imagenes/buscar3.png" Width="24px" />


                    </div>
                    <br />



                </fieldset>


                <div class="row">
                </div>

                <%--   </asp:GridView>--%>


                <hr />
                <div class="container d-flex justify-content-center">
                    <div class="table small">


                        <asp:GridView runat="server" ID="Datos" class="table table-borderless table-hover">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/Imagenes/Captura.PNG" SelectText="Guardar" />
                            </Columns>
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

   
        </div>

</asp:Content>
