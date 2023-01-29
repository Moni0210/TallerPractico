<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="CancelarCita.aspx.vb" Inherits="Proye1admiBD.Formulario_web18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="container d-flex justify-content-center">
            <div class="col-8">
                <div class="form-control card card-body">
                    <div class="row justify-content-center">
                        <asp:Label runat="server" CssClass="row justify-content-center h3">Reservar Cita</asp:Label>
                    </div>
                    <fieldset>
                        <legend class="row justify-content-center">Datos de la Cita</legend>

                         <div class="input-group">
                            <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="Identificacion:"></asp:Label>
                            <asp:TextBox ID="tbIdentificacion" CssClass="form-control" runat="server" placeholder="Escriba su identicación"></asp:TextBox>
                        </div>

                       

                        <br />
                        
                        <div class="input-group">
                            <asp:Label ID="Label8" CssClass="form-control" runat="server" Text="Codigo:"></asp:Label>
                            <asp:TextBox ID="tbId" CssClass="form-control" runat="server"></asp:TextBox>

                        </div>
                        <br />
                       
                        <div class="input-group">
                            
                            <asp:Label ID="Label2" CssClass="form-control" runat="server" Text="Nombre:"></asp:Label>
                            <asp:TextBox ID="tbNombre" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label3" CssClass="form-control" runat="server" Text="Doctor:"></asp:Label>
                            <asp:TextBox ID="TbDoctor" CssClass="form-control" runat="server"></asp:TextBox>
                           
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label4" CssClass="form-control" runat="server" Text="Fecha de la cita:"></asp:Label>
                              <asp:TextBox ID="TbFecha" CssClass="form-control" runat="server"></asp:TextBox>
                    
                          
                    
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label6" CssClass="form-control" runat="server" Text="Hora de la Cita:"></asp:Label>
                              <asp:TextBox ID="Tbhora" CssClass="form-control" runat="server"></asp:TextBox>
                          
                        </div>
                        <%--  <asp:Button ID="Button2" runat="server" Text="Seleccionar datos" CssClass=" form-control btn btn-primary" />--%>
                        <br />

                         <div class="input-group">
                            <asp:Label ID="Label5" CssClass="form-control" runat="server" Text="Estado:"></asp:Label>
                            <asp:DropDownList ID="DdLdisponibilidad" runat="server" CssClass="form-control" AppendDataBoundItems="True"></asp:DropDownList>

                        </div>
                     
                         <br />

                         <div class="input-group">
                            <asp:Label ID="Label7" CssClass="form-control" runat="server" Text="descripcion:"></asp:Label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>

                        </div>
                     
                    </fieldset>

                    <br />
                    <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                    <br />
                    <div class="row">
<asp:Button ID="Button12" runat="server" Text="Cargar datos" BorderStyle="None" ForeColor="Gray" CssClass=" form-control btn btn-primary " BackColor="#E9ECEF" />

                        <hr />
                        <asp:Button ID="Button10" runat="server" Text="Cancelar Cita" CssClass=" form-control btn btn-primary " BackColor="#E9ECEF" BorderStyle="None" ForeColor="Gray" />
                        <hr />
                        <%--<asp:Button ID="Button9" runat="server" Text="Modificar Empleados" BorderStyle="None" ForeColor="Gray" CssClass=" form-control btn btn-primary " BackColor="#E9ECEF" />
                        <hr />--%>
                        
                         <asp:Button ID="Button1" runat="server" Text="Cancelar" BorderStyle="None" ForeColor="Gray" CssClass=" form-control btn btn-primary " BackColor="#E9ECEF" />
                        <hr />
                    </div>

                </div>
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
                    <div class="container d-flex justify-content-center">
                <div class="table small">
                </div>
            </div>

            <%--  <asp:Button ID="Button2" runat="server" Text="Seleccionar datos" CssClass=" form-control btn btn-primary" />--%>
        </div>

     <asp:TextBox ID="TbidDoctor" runat="server" Visible="False"></asp:TextBox>

     <asp:TextBox ID="TbIdHorario" runat="server" Visible="False"></asp:TextBox>

     <br />



   





</asp:Content>
