Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Net
Imports Negocios

Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim obj_Usuario As New Usuario
    Dim id_rol As Integer = 0
    Dim String_Conexion = "Data Source=tiusr2pl.cuc-carrera-ti.ac.cr\MSSQLSERVER2019;Initial Catalog=tiusr2pl_agenda_g1; User ID=grupo1_ti; Password=holamundo"
    Public conexion As SqlConnection
    Public cmd As SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ''Datos()
        'If (IsPostBack And Session("usuario") <> vbNullString) Then
        '    id_rol = Convert.ToInt32(Session("id_rol").ToString())

        '    Permisos(id_rol)
        'End If




    End Sub



    Protected Sub BtnIngresar_Click(sender As Object, e As EventArgs) Handles BtnIngresar.Click
        Try

            Registrar(tbId.Text, tbNombres.Text, tbApellidos1.Text, tbApellidos2.Text, tbFecha.Text, tbCorreo.Text, TbTelefono.Text, TbContrasena.Text)

        Catch ex As Exception
            lblError.Text = "Error agregar los datos:  " + ex.Message
        End Try




    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Inicio.aspx")
    End Sub


    Sub Registrar(identificacion As Integer, Nombre As String, PrimerApellido As String, SegundoApellido As String, FechaNacimiento As String, Email As String, Telefono As String, Contrasena As String)


        conexion = New SqlConnection(String_Conexion)
        cmd = New SqlCommand("SP_insertar_usuario", conexion)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@Identificacion", identificacion)
        cmd.Parameters.AddWithValue("@Nombre", Nombre)
        cmd.Parameters.AddWithValue("@Primerapellido", PrimerApellido)
        cmd.Parameters.AddWithValue("@SegundoApellido", SegundoApellido)
        cmd.Parameters.AddWithValue("@FechaNacimiento", FechaNacimiento)
        cmd.Parameters.AddWithValue("@CorreoElectronico", Email)
        cmd.Parameters.AddWithValue("@Telefono", Telefono)
        cmd.Parameters.AddWithValue("@Contrasena ", Contrasena)

        conexion.Open()
        cmd.ExecuteNonQuery()
        conexion.Close()

    End Sub






End Class