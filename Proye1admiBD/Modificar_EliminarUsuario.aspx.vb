Imports Negocios
Imports System.Data.SqlClient

Public Class Formulario_web11
    Inherits System.Web.UI.Page
    Dim obj_Usuario As New Usuario
    Dim id_rol As Integer = 0
    Dim String_Conexion = "Data Source=LAPTOP-59A9TSFS;Initial Catalog=AdmiProyecto1;Integrated Security=True"
    Public conexion As SqlConnection
    Public cmd As SqlCommand
    Public rd As SqlDataReader
    Public da As SqlDataAdapter
    Public dt As DataTable
    Public Reader As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load





        'Datos1()
    End Sub

    Protected Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        Try

            Modificar(tbId.Text, tbNombres.Text, tbApellidos1.Text, tbApellidos2.Text, tbFecha.Text, tbCorreo.Text, TbTelefono.Text, TbContrasena.Text, DropDownList1.Text, Label9.Text)
            lblError.Text = " Los datos fueron actualizados correctamente "
        Catch ex As Exception
            lblError.Text = "Los datos no se pudieron actulizar  " + ex.Message
        End Try

    End Sub


    'Sub Datos1()
    '    Try
    '        conexion = New SqlConnection(String_Conexion)
    '        cmd = New SqlCommand("sp_DatosUsuarios", conexion)
    '        cmd.CommandType = System.Data.CommandType.StoredProcedure
    '        conexion.Open()
    '        da = New SqlDataAdapter(cmd)
    '        dt = New DataTable()
    '        da.Fill(dt)
    '        Datos.DataSource = dt
    '        Datos.DataBind()
    '        conexion.Close()
    '    Catch ex As Exception
    '        lblError.Text = "Error al actulizar los datos:  " + ex.Message
    '    End Try
    'End Sub


    Sub Buscar()
        Try
            conectar()
            cmd = New SqlCommand("sp_BucarsUsuarios", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = tbId.Text
            conexion.Open()
            cmd.ExecuteNonQuery()
            conexion.Close()
        Catch ex As Exception
            lblError.Text = "Error al filtrar datos:  " + ex.Message
        End Try
    End Sub

    'Protected Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click
    'End Sub

    'Protected Sub Button11_Click(sender As Object, e As EventArgs) Handles Button11.Click

    'End Sub

    Protected Sub Button12_Click(sender As Object, e As EventArgs) Handles Button12.Click
        conectar()
        Try


            Eliminar(tbId.Text)
            Session("Identificacion") = vbNullString
            Session("IdUsuario") = vbNullString
            Response.Redirect("Inicio.aspx")
            Eliminar(tbId.Text)
            HttpContext.Current.Session.Abandon()
            Eliminar(tbId.Text)

            lblError.Text = " Su usuario fue eliminado "
        Catch ex As Exception
            lblError.Text = "No se pudo eliminar su usuario  " + ex.Message
        End Try
    End Sub

    Protected Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click
        conectar()
        If (Session("Identificacion") <> vbNullString) Then
            tbId.Text = Session("Identificacion").ToString()
            tbNombres.Text = Session("Nombre").ToString()
            tbApellidos1.Text = Session("PrimerApellido").ToString()
            tbApellidos2.Text = Session("SegundoApellido").ToString
            tbFecha.Text = Session("FechaNacimiento").ToString
            tbCorreo.Text = Session("CorreoElectronico").ToString
            TbTelefono.Text = Session("Telefono").ToString
            TbContrasena.Text = Session("Contrasena").ToString
            DropDownList1.Text = Session("IdEstado").ToString
            'Session("IdUsuario") = rd(9).ToString()
        End If
    End Sub
    Sub Modificar(identificacion As Integer, Nombre As String, PrimerApellido As String, SegundoApellido As String, FechaNacimiento As String, Email As String, Telefono As String, Contrasena As String, idEstado As Integer, idUsuario As Integer)
        conectar()
        conexion = New SqlConnection(String_Conexion)
        cmd = New SqlCommand("Crud", conexion)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 2
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

    Sub conectar()
        If (Session("IdUsuario") = 1) Then
            Try
                Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Clientes; Password= 1234;"

            Catch ex As Exception
                lblError.Text = ex.Message
            End Try


        End If

        If (Session("IdUsuario") = 3) Then
            Try
                Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Gerente; Password= 1234;"

            Catch ex As Exception
                lblError.Text = ex.Message
            End Try

        End If

    End Sub
    Sub Eliminar(identificacion As Integer)

        Try
            conectar()
            cmd = New SqlCommand("EliminarUsuario", conexion)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@Identificacion", identificacion)

            conexion.Open()


            cmd.ExecuteNonQuery()
        Catch ex As Exception
            Throw New System.Exception("Error al eliminar el dato " & ex.Message)
        Finally
            conexion.Close()
        End Try
    End Sub
End Class