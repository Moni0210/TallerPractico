<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="RegistrarHorarios.aspx.vb" Inherits="Proye1admiBD.Formulario_web15" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container d-flex justify-content-center">
        <div class="col-8">
            <div class="form-control card card-body">
                <div class="row justify-content-center">
                    <asp:Label runat="server" CssClass="row justify-content-center h3"> Registro de Horarios</asp:Label>
                    <asp:ImageButton ID="ImageButton1" runat="server" BorderStyle="None"  Width="48px" Height="36px"   ImageUrl="~/Imagenes/horas.png" CssClass="row justify-content-lg-end"/>
                    
                </div>

                <fieldset>
                    
                    <legend class="row justify-content-center">Horario</legend>
                    <br />
                    <div class="input-group">
                        <asp:Label ID="Label3" CssClass="form-control" runat="server" Text="Codigo:"></asp:Label>
                        <asp:TextBox ID="tbCodigo" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <br />

                    <div class="input-group">

                        <asp:Label ID="Label8" CssClass="form-control" runat="server" Text="Doctor:"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AppendDataBoundItems="True" EnableTheming="True"></asp:DropDownList>
                        <asp:TextBox ID="TbDoctor" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Tbid" CssClass="form-control" runat="server" Visible="False"></asp:TextBox>
                    </div>
                    <br />
                    <div class="input-group">
                        <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="Fecha de Cita:"></asp:Label>
                        <asp:TextBox ID="TbFecha" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                       <asp:TextBox ID="Tbfecha2" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
 
                    <br />
                    <div class="input-group">
                        <asp:Label ID="Label2" CssClass="form-control" runat="server" Text="Horas:"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" AppendDataBoundItems="True"></asp:DropDownList>
                         <asp:TextBox ID="tbhoras" CssClass="form-control" runat="server" ></asp:TextBox>
                    </div>
                    <br />

                    <div class="input-group">
                        <asp:Label ID="Label4" CssClass="form-control" runat="server" Text="Disponibilidad:"></asp:Label>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" AppendDataBoundItems="True"></asp:DropDownList>
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control" AppendDataBoundItems="True"></asp:DropDownList>
                    </div>
                    <br />
                   
                    
                </fieldset>
                <br />
                <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>

                <br />
                <div class="row">
                    <asp:Button ID="BtnIngresar" CssClass=" form-control btn btn-primary " runat="server" Text="Registrar horarios" BackColor="#E9ECEF" BorderStyle="None" OnClick="BtnIngresar_Click" />
                    <hr />

                    <asp:Button ID="Button1" CssClass=" form-control btn btn-primary " runat="server" Text="Cancelar" BackColor="#E9ECEF" BorderStyle="None" OnClick="Button1_Click" />
                </div>

                <%--   </asp:GridView>--%>
            </div>
        </div>


        <hr />
        <hr />
        <br />
    </div>

    <hr />
    <div class="container d-flex justify-content-center">
        <div class="table small">
            <asp:GridView runat="server" ID="Datos" class="table table-borderless table-hover">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </div>


        

    <%--<%--<asp:GridView ID="Datos1" runat="server">--%>     <%--   </asp:GridView>--%>
    </asp:Content>
