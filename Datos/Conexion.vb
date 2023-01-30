Imports System.Data.SqlClient

Public Class Conexion
    Dim String_Conexion = "Data Source=tiusr2pl.cuc-carrera-ti.ac.cr\MSSQLSERVER2019;Initial Catalog=tiusr2pl_agenda_g1; User ID=grupo1_ti; Password=holamundo"

    Public conexion As SqlConnection
    Dim mi_Dataset As New DataSet
    Public cmd As SqlCommand
    Public rd As SqlDataReader
    Dim probar As String

    Public Property TablaUsuarios As DataTable
        Get
            Return mi_Dataset.Tables(0)
        End Get
        Set(value As DataTable)

        End Set
    End Property
    Private Sub AbrirConexion()

        Try
            'envia el string de conexion y abre la misma
            conexion = New SqlConnection(probar)
            conexion.Open()
        Catch ex As Exception
            Throw New System.Exception("Error abriendo la conexion" & ex.Message)
        End Try
    End Sub
    Private Sub CerrarConexion()
        conexion.Close()
    End Sub



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

    Sub Registrar1(identificacion As Integer, Nombre As String, PrimerApellido As String, SegundoApellido As String, FechaNacimiento As String, Email As String, Telefono As String, Contrasena As String, idEstado As Integer, idUsuario As Integer)

        conexion = New SqlConnection(String_Conexion)
        cmd = New SqlCommand("Crud", conexion)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 1
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


    Sub Modificar(identificacion As Integer, Nombre As String, PrimerApellido As String, SegundoApellido As String, FechaNacimiento As String, Email As String, Telefono As String, Contrasena As String, idEstado As Integer, idUsuario As Integer)

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


    Sub Eliminar(identificacion As Integer)

        Try
            conexion = New SqlConnection(String_Conexion)
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


    Sub Eliminar1(identificacion As Integer, Nombre As String, PrimerApellido As String, SegundoApellido As String, FechaNacimiento As String, Email As String, Telefono As String, Contrasena As String, idEstado As Integer, idUsuario As Integer)

        conexion = New SqlConnection(String_Conexion)
        cmd = New SqlCommand("Crud", conexion)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 3
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



    Sub RegistrarHorario(Fecha As Date, Horas As String, IdDoctor As Integer, idisponible As Integer)

        conexion = New SqlConnection(String_Conexion)
        cmd = New SqlCommand("SP_CrudHorario", conexion)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 1

        'cmd.Parameters.AddWithValue("@HorarioId", HoraId)
        cmd.Parameters.AddWithValue("@Fecha", Fecha)
        cmd.Parameters.AddWithValue("@Horas", Horas)

        cmd.Parameters.AddWithValue("@IdDoctor", IdDoctor)
        cmd.Parameters.AddWithValue("@IDDisponibilidad", idisponible)
        conexion.Open()
        cmd.ExecuteNonQuery()
        conexion.Close()
    End Sub

    Sub ModificarHorario(Fecha As Date, Horas As String, IdDoctor As Integer, idisponible As Integer)

        conexion = New SqlConnection(String_Conexion)
        cmd = New SqlCommand("SP_CrudHorario", conexion)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 2
        cmd.Parameters.Add("@Fecha", SqlDbType.DateTime).Value = Fecha
        'cmd.Parameters.AddWithValue("@HorarioId", HoraId)
        'cmd.Parameters.AddWithValue("@Fecha", Fecha)
        cmd.Parameters.AddWithValue("@Horas", Horas)
        cmd.Parameters.AddWithValue("@IdDoctor", IdDoctor)
        cmd.Parameters.AddWithValue("@IDDisponibilidad", idisponible)
        conexion.Open()
        cmd.ExecuteNonQuery()
        conexion.Close()
    End Sub

    Sub RegistrarCita(CitasId As Integer, UsuarioId As Integer, MedicoId As Integer, IdHorario As String, estado As Integer)

        conexion = New SqlConnection(String_Conexion)
        cmd = New SqlCommand("SP_InsertarCita", conexion)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 1
        cmd.Parameters.AddWithValue("@CitasId", CitasId)
        cmd.Parameters.AddWithValue("@UsuarioID", UsuarioId)
        cmd.Parameters.AddWithValue("@MedicoID", MedicoId)
        cmd.Parameters.AddWithValue("@IdHorario", IdHorario)
        cmd.Parameters.AddWithValue("@IdEstadoCita", estado)

        conexion.Open()
        cmd.ExecuteNonQuery()
        conexion.Close()
    End Sub

    'Sub MosificarCita(CitasId As Integer, UsuarioId As Integer, MedicoId As Integer, IdHorario As String, estado As Integer)

    '    conexion = New SqlConnection(String_Conexion)
    '    cmd = New SqlCommand("SP_InsertarCita", conexion)
    '    cmd.CommandType = CommandType.StoredProcedure
    '    cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 2
    '    cmd.Parameters.AddWithValue("@CitasId", CitasId)
    '    cmd.Parameters.AddWithValue("@UsuarioID", UsuarioId)
    '    cmd.Parameters.AddWithValue("@MedicoID", MedicoId)
    '    cmd.Parameters.AddWithValue("@IdHorario", IdHorario)
    '    cmd.Parameters.AddWithValue("@IdEstadoCita", estado)

    '    conexion.Open()
    '    cmd.ExecuteNonQuery()
    '    conexion.Close()
    'End Sub




    'Sub CancelarCita(CitasId As Integer, UsuarioId As Integer, estado As Integer, motivo As String)

    '    conexion = New SqlConnection(String_Conexion)
    '    cmd = New SqlCommand("SP_CancelarCita", conexion)
    '    cmd.CommandType = CommandType.StoredProcedure
    '    cmd.Parameters.AddWithValue("@CitasId", CitasId)
    '    cmd.Parameters.AddWithValue("@UsuarioID", UsuarioId)
    '    cmd.Parameters.AddWithValue("@IdEstadoCita", estado)
    '    cmd.Parameters.AddWithValue("@Descripcion", motivo)
    '    conexion.Open()
    '    cmd.ExecuteNonQuery()
    '    conexion.Close()
    'End Sub




End Class
