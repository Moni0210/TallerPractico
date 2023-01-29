<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="Grafico.aspx.vb" Inherits="Proye1admiBD.Formulario_web113" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container d-flex justify-content-center">
        <div class="col-8">
            <div class="form-control card card-body">
                <div class="row justify-content-center">
                    <asp:Label runat="server" CssClass="row justify-content-center h3">Grafico</asp:Label>
                </div>
                <fieldset>
                    <legend class="row justify-content-center">Cantidad de Citas Reservadas</legend>

                    <br />

                    <div>

                        <asp:Chart ID="Chart1" runat="server" Height="477px" Width="741px" PaletteCustomColors="255, 192, 192">
                            <Series>
                                <asp:Series Name="Series1" ChartType="Doughnut" IsXValueIndexed="True" Legend="Legend1" LegendMapAreaAttributes="#VALX">
                                    <Points>
                                        <asp:DataPoint YValues="0" />
                                    </Points>
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </ChartAreas>
                            <Legends>
                                <asp:Legend Name="Legend1" DockedToChartArea="ChartArea1" HeaderSeparator="ThickLine">
                                    <CellColumns>
                                        <asp:LegendCellColumn Name="Lunes" Alignment="MiddleLeft" ColumnType="SeriesSymbol" Text="#LABEL#LEGENDTEXT">
                                            <Margins Left="15" Right="15" />
                                        </asp:LegendCellColumn>
                                    
                                        <asp:LegendCellColumn Name="Column2">
                                            <Margins Left="15" Right="15" />
                                        </asp:LegendCellColumn>
                                    
                                    </CellColumns>
                                </asp:Legend>
                            </Legends>
                        </asp:Chart>
                        <br />

                    </div>

                    <asp:TextBox ID="tbFechaI" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbFechaF" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                    
                      <br />
                 <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>

                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Generar Grafico" CssClass="form-control" ForeColor="Black" />

                </fieldset>

            </div>
        </div>

    </div>



</asp:Content>
