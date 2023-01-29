<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="ListaCitaspordia.aspx.vb" Inherits="Proye1admiBD.Formulario_web116" %>

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
                        <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="Seleccione:"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                            <asp:ListItem Value="0">Selecionar Citas por Cantidades</asp:ListItem>
                            <asp:ListItem Value="1">Selecionar Citas por Porcentajes</asp:ListItem>
                            <asp:ListItem Value="3">Analisis por día</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;
                        
                    </div>
                    <br />
                    <div class="input-group">
                        <asp:Label ID="Label8" CssClass="form-control" runat="server" Text="Fecha:"></asp:Label>
                        <asp:TextBox ID="tbFecha" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                        &nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" BorderStyle="None" Height="26px" ImageUrl="~/Imagenes/buscar3.png" Width="24px" />
                    </div>

                    <br />


                </fieldset>


                <div class="row">


                    <br />
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






                <div class="input-group">
                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
                <br />
                <div class="input-group">
                    <asp:Label ID="Label5" CssClass="form-control" runat="server" Text="-------------------Total de Citas:" BorderColor="White"></asp:Label>
                    <asp:Label ID="Label6" CssClass="form-control" runat="server" Text="Cantidades:" BorderColor="White"></asp:Label>
                    <asp:Label ID="Label7" CssClass="form-control" runat="server" Text="Porcentaje:" BorderColor="White"></asp:Label>
                </div>
                <br />
                <div class="input-group">
                    <asp:Label ID="Label2" CssClass="form-control" runat="server" Text="-------------------Total de Citas:" BorderColor="White"></asp:Label>
                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" BorderColor="White" ReadOnly="True"></asp:TextBox>
                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" BorderColor="White" ReadOnly="True"></asp:TextBox>
                </div>
                <br />
                <div class="input-group">
                    <asp:Label ID="Label3" CssClass="form-control" runat="server" Text="-------------------Citas Reservadas:" BorderColor="White"></asp:Label>
                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" BorderColor="White" ReadOnly="True"></asp:TextBox>
                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" BorderColor="White" ReadOnly="True"></asp:TextBox>
                </div>
                <br />
                <div class="input-group">
                    <asp:Label ID="Label4" CssClass="form-control" runat="server" Text="-------------------Citas Canceladas:" BorderColor="White"></asp:Label>
                    <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" BorderColor="White" ReadOnly="True"></asp:TextBox>
                    <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server" BorderColor="White" ReadOnly="True"></asp:TextBox>
                </div>
                <br />
                <div class="input-group">
                    <asp:Label ID="Label9" CssClass="form-control" runat="server" Text="-------------------Citas Efectivas:" BorderColor="White"></asp:Label>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" BorderColor="White" ReadOnly="True"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" BorderColor="White" ReadOnly="True"></asp:TextBox>
                </div>

                <br />
                <div class="input-group">
                    <asp:Label ID="Label10" CssClass="form-control" runat="server" Text="-------------------Citas Perdidas:" BorderColor="White"></asp:Label>
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" BorderColor="White" ReadOnly="True"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" BorderColor="White" ReadOnly="True"></asp:TextBox>
                </div>

            </div>
        </div>

        <br />
    </div>


    <asp:TextBox ID="TextBox12" runat="server" Width="16px" Visible="False"></asp:TextBox>
    <asp:TextBox ID="TextBox13" runat="server" Width="16px" Visible="False"></asp:TextBox>

    <asp:TextBox ID="TextBox14" runat="server" Visible="False" Width="16px"></asp:TextBox>
    <asp:TextBox ID="TextBox15" runat="server" Visible="False" Width="16px"></asp:TextBox>
    <asp:TextBox ID="TextBox16" runat="server" Visible="False" Width="16px"></asp:TextBox>
    <asp:TextBox ID="TextBox17" runat="server" Visible="False" Width="16px"></asp:TextBox>
</asp:Content>
