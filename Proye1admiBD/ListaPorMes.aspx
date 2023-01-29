<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="ListaPorMes.aspx.vb" Inherits="Proye1admiBD.Formulario_web117" %>

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
                            <asp:ListItem Value="0">Selecionar Citas por Cantidades</asp:ListItem>
                            <asp:ListItem Value="1">Selecionar Citas por Porcentajes</asp:ListItem>
                            
                        </asp:DropDownList>
                        &nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" BorderStyle="None" Height="26px" ImageUrl="~/Imagenes/buscar3.png" Width="24px" Visible="False" />


                    </div>
                    <br />
                    <div class="input-group">
                        <asp:Label ID="Label8" CssClass="form-control" runat="server" Text="Fecha Inicial:"></asp:Label>
                        <asp:TextBox ID="tbFecha" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                        &nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Label ID="Label11" CssClass="form-control" runat="server" Text="Fecha Final:"></asp:Label>
                        <asp:TextBox ID="TbFinal" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
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

                        <%--  <asp:Chart ID="Chart1" runat="server">
                <Series>
                    <asp:Series Name="Series1"></asp:Series>
                    <asp:Series Name="Series2" ChartArea="ChartArea1"></asp:Series>
                </Series>
                <Series>
                    <asp:Series Name="Series2"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>--%>
                    </div>
                </div>  

                <br />
                <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                <br />

            </div>
        </div>

        <br />
    </div>


    <asp:TextBox ID="TextBox12" runat="server" Width="16px" Visible="False"></asp:TextBox>
    <asp:TextBox ID="TextBox13" runat="server" Width="16px" Visible="False"></asp:TextBox>

    <asp:TextBox ID="TextBox14" runat="server" Width="16px" Visible="False"></asp:TextBox>
    <asp:TextBox ID="TextBox15" runat="server" Width="16px" Visible="False"></asp:TextBox>
    <asp:TextBox ID="TextBox16" runat="server" Width="16px" Visible="False"></asp:TextBox>

</asp:Content>
