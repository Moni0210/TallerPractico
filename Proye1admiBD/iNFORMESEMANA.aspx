<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="iNFORMESEMANA.aspx.vb" Inherits="Proye1admiBD.Formulario_web121" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="container d-flex justify-content-center">
        <div class="col-8">
            <div class="form-control card card-body">
                <div class="row justify-content-center">
                    <asp:Label runat="server" CssClass="row justify-content-center h3"> Resumen de Citas por estado</asp:Label>


                </div>

                <fieldset>

                    <legend class="row justify-content-center">Analisis</legend>
                    <br />
                    <div class="input-group">
                        <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="Seleccione:"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                            <asp:ListItem Value="0">Citas efectivas</asp:ListItem>
                            <asp:ListItem Value="1">Citas Canceladas</asp:ListItem>
                            <asp:ListItem Value="2">Citas Perdidas</asp:ListItem>
                        </asp:DropDownList>

                       
                    </div>
                    <br />

                    <div class="input-group">
                        <asp:Label ID="Label2" CssClass="form-control" runat="server" Text="Fecha de inicio:"></asp:Label>
                        <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                       &nbsp;&nbsp;  <asp:Label ID="Label3" CssClass="form-control" runat="server" Text="Fecha final:"></asp:Label>
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
 &nbsp;
                          &nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" BorderStyle="None" Height="26px" ImageUrl="~/Imagenes/buscar3.png" Width="24px" />
                    </div>
                    <br />

                    <br />





                    <div class="row">


                        <br />
                    </div>




                    <hr />
                    <div class="container d-flex justify-content-center">
                        <div class="table small">


                            <asp:GridView runat="server" ID="Datos" class="table table-borderless table-hover">
                                <Columns>
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


                </fieldset>

            </div>
        </div>

        <br />
    </div>


</asp:Content>
