<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="MantenimientoEmpleados.aspx.vb" Inherits="Proye1admiBD.Formulario_web13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="container d-flex justify-content-center">
            <div class="col-8">
                <div class="form-control card card-body">
                    <div class="row justify-content-center">
                        <asp:Label runat="server" CssClass="row justify-content-center h3">Mantenimiento de Empleados</asp:Label>
                    </div>
                    <fieldset>
                        <legend class="row justify-content-center">Datos personales</legend>

                        <div class="input-group">
                            <asp:Label ID="Label8" CssClass="form-control" runat="server" Text="Identificacion:"></asp:Label>
                            <asp:TextBox ID="tbId" CssClass="form-control" runat="server"></asp:TextBox>

                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="Nombres:"></asp:Label>
                            <asp:TextBox ID="tbNombres" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label2" CssClass="form-control" runat="server" Text="Primer Apellido:"></asp:Label>
                            <asp:TextBox ID="tbApellidos1" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label3" CssClass="form-control" runat="server" Text="Segundo Apellido:"></asp:Label>
                            <asp:TextBox ID="tbApellidos2" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label4" CssClass="form-control" runat="server" Text="Fecha de Nacimiento:"></asp:Label>
                            <asp:TextBox ID="tbFecha" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label6" CssClass="form-control" runat="server" Text="Correo Electronico:"></asp:Label>
                            <asp:TextBox ID="tbCorreo" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <%--<asp:Button ID="Button11" runat="server" Text="Button" />--%>
                        <br />
                        <div class="input-group">
                            <%--  <asp:Button ID="Button2" runat="server" Text="Seleccionar datos" CssClass=" form-control btn btn-primary" />--%>
                            <%--<asp:Button ID="Button11" runat="server" Text="Button" />--%>
                            <asp:Label ID="Label5" CssClass="form-control" runat="server" Text="Telefono:"></asp:Label>
                            <asp:TextBox ID="TbTelefono" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label7" CssClass="form-control" runat="server" Text="Contraseña:"></asp:Label>
                            <asp:TextBox ID="TbContrasena" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <br />
                        <div class="input-group">
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="EstadoUsuario" DataValueField="IdEstadoUsuario"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdmiProyecto1ConnectionString %>" SelectCommand="SELECT * FROM [EstadoUsuario]"></asp:SqlDataSource>

                        </div>

                    </fieldset>

                    <br />
                    <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                    <br />
                    <div class="row">

                        <asp:Button ID="Button10" runat="server" Text="Insertar Empleados" CssClass=" form-control btn btn-primary " BackColor="#E9ECEF" BorderStyle="None" ForeColor="Gray" />
                        <hr />
                        <asp:Button ID="Button9" runat="server" Text="Modificar Empleados" BorderStyle="None" ForeColor="Gray" CssClass=" form-control btn btn-primary " BackColor="#E9ECEF" />
                        <hr />
                        <asp:Button ID="Button12" runat="server" Text="Eliminar Empleados" BorderStyle="None" ForeColor="Gray" CssClass=" form-control btn btn-primary " BackColor="#E9ECEF" />
                        <hr />
                    </div>

                </div>
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            </div>

 </div>
        <hr />
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

            <asp:Label runat="server" ID="Label9" Visible="False">2</asp:Label>
            <%--  <asp:Button ID="Button2" runat="server" Text="Seleccionar datos" CssClass=" form-control btn btn-primary" />--%>
        </div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>




   
    </asp:Content>
