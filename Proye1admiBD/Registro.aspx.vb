Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Net
Imports Negocios

Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim obj_Usuario As New Usuario
    Dim id_rol As Integer = 0
    Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Usuario; Password= 1234;"
    Public conexion As SqlConnection
    Public cmd As SqlCommand
    Public rd As SqlDataReader
    Public da As SqlDataAdapter
    Public dt As DataTable
    Public Reader As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ''Datos()
        'If (IsPostBack And Session("usuario") <> vbNullString) Then
        '    id_rol = Convert.ToInt32(Session("id_rol").ToString())

        '    Permisos(id_rol)
        'End If




    End Sub



    Protected Sub BtnIngresar_Click(sender As Object, e As EventArgs) Handles BtnIngresar.Click
        Try

            Registrar(tbId.Text, tbNombres.Text, tbApellidos1.Text, tbApellidos2.Text, tbFecha.Text, tbCorreo.Text, TbTelefono.Text, TbContrasena.Text, DropDownList1.Text, Label9.Text)

        Catch ex As Exception
            lblError.Text = "Error agregar los datos:  " + ex.Message
        End Try




    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Inicio.aspx")
    End Sub

    'Sub Datos()
    '    Try
    '        conexion = New SqlConnection(String_Conexion)
    '        cmd = New SqlCommand("sp_DatosUsuarios", conexion)
    '        cmd.CommandType = System.Data.CommandType.StoredProcedure
    '        conexion.Open()
    '        da = New SqlDataAdapter(cmd)
    '        dt = New DataTable()
    '        da.Fill(dt)
    '        Datos1.DataSource = dt
    '        Datos1.DataBind()
    '        conexion.Close()
    '    Catch ex As Exception
    '        lblError.Text = "Error al actulizar los datos:  " + ex.Message
    '    End Try
    'End Sub

    Sub Registrar(identificacion As Integer, Nombre As String, PrimerApellido As String, SegundoApellido As String, FechaNacimiento As String, Email As String, Telefono As String, Contrasena As String, idEstado As Integer, idUsuario As Integer)


        conexion = New SqlConnection(String_Conexion)
        cmd = New SqlCommand("sp_registrarUsuario", conexion)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@Identificacion", identificacion)
        cmd.Parameters.AddWithValue("@Nombre", Nombre)
        cmd.Parameters.AddWithValue("@Primerapellido", PrimerApellido)
        cmd.Parameters.AddWithValue("@SegundoApellido", SegundoApellido)
        cmd.Parameters.AddWithValue("@FechaNacimiento", FechaNacimiento)
        cmd.Parameters.AddWithValue("@CorreoElectronico", Email)
        cmd.Parameters.AddWithValue("@Telefono", Telefono)
        cmd.Parameters.AddWithValue("@Contrasena ", Contrasena)
        cmd.Parameters.AddWithValue("@IdEstado", idEstado)
        cmd.Parameters.AddWithValue("@IdUsuario", idUsuario)

        conexion.Open()
        cmd.ExecuteNonQuery()
        conexion.Close()

    End Sub






End Class