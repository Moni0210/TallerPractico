Imports System.Data.SqlClient
Imports Negocios

Public Class Formulario_web18
    Inherits System.Web.UI.Page
    Dim obj_Citas As New Cita
    Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Clientes; Password= 1234;"
    Public conexion As SqlConnection
    Public cmd As SqlCommand
    Public rd As SqlDataReader
    Public da As SqlDataAdapter
    Public dt As DataTable
    Public Reader As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            Datos5()
        End If 'Cargardatos()

    End Sub

    Protected Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click

        Try
            If (Session("IdUsuario") = 1) Then
                Try
                    Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Clientes; Password= 1234;"
                    conexion = New SqlConnection(String_Conexion)
                    cmd = New SqlCommand("SP_InsertarCita", conexion)
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.CommandType = System.Data.CommandType.StoredProcedure
                    MosificarCita(tbId.Text, tbIdentificacion.Text, TbIdHorario.Text, TbidDoctor.Text, DdLdisponibilidad.Text)
                    lblError.Text = "La cita fue cancelada"
                Catch ex As Exception
                    lblError.Text = "No se pudo cancelar la cita" + ex.Message
                End Try

            End If

            If (Session("IdUsuario") = 2) Then
                Try
                    Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Empleados; Password= 1234;"
                    conexion = New SqlConnection(String_Conexion)
                    cmd = New SqlCommand("SP_InsertarCita", conexion)
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.CommandType = System.Data.CommandType.StoredProcedure
                    MosificarCita(tbId.Text, tbIdentificacion.Text, TbIdHorario.Text, TbidDoctor.Text, DdLdisponibilidad.Text)
                    lblError.Text = "La cita fue cancelada"
                Catch ex As Exception
                    lblError.Text = "No se pudo cancelar la cita" + ex.Message
                End Try


            End If

            If (Session("IdUsuario") = 3) Then
                Try
                    Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Gerente; Password= 1234;"
                    conexion = New SqlConnection(String_Conexion)
                    cmd = New SqlCommand("SP_InsertarCita", conexion)
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.CommandType = System.Data.CommandType.StoredProcedure
                    MosificarCita(tbId.Text, tbIdentificacion.Text, TbIdHorario.Text, TbidDoctor.Text, DdLdisponibilidad.Text)
                    lblError.Text = "La cita fue cancelada"
                Catch ex As Exception
                    lblError.Text = "No se pudo cancelar la cita" + ex.Message
                End Try

            End If

            'obj_Citas.CitasID1 = tbId.Text
            'obj_Citas.UsuarioId1 = tbIdentificacion.Text
            'obj_Citas.IdHorario1 = TbIdHorario.Text
            'obj_Citas.MedicoID1 = TbidDoctor.Text
            'obj_Citas.Estado1 = DdLdisponibilidad.Text
            'obj_Citas.Motivo1 = TextBox1.Text
            'obj_Citas.ModificaarCita()
            'obj_Citas.CancelarCita()
            lblError.Text = "La cita fue cancelada"
        Catch ex As Exception
            lblError.Text = "No se pudo cancelar la cita" + ex.Message
        End Try

    End Sub


    Sub Cargardatos()



        Try
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("SP_LeerCita", conexion)
            cmd.CommandType = CommandType.StoredProcedure
            conexion.Open()
            rd = cmd.ExecuteReader()
            If (rd.Read()) Then

                Session("CitasId") = rd(0).ToString()
                Session("UsuarioID") = rd(1).ToString()
                Session("MedicoID") = rd(2).ToString()
                Session("IdHorario") = rd(3).ToString
                Session("Fecha") = rd(4).ToString
                Session("Horas") = rd(5).ToString
                Session("Usuario") = rd(6).ToString
                Session("Doctor") = rd(7).ToString

            End If

        Catch ex As Exception

        End Try
    End Sub



    Sub caargar2()
        If (Session("Identificacion") = tbIdentificacion.Text) Then
            tbId.Text = Session("CitasId").ToString()
            TbIdHorario.Text = Session("IdHorario").ToString
            TbidDoctor.Text = Session("MedicoID").ToString
            TbFecha.Text = Session("Fecha").ToString
            tbNombre.Text = Session("Usuario").ToString
            Tbhora.Text = Session("Horas").ToString
            TbDoctor.Text = Session("Doctor").ToString


        End If
    End Sub

    Protected Sub Button12_Click(sender As Object, e As EventArgs) Handles Button12.Click
        Cargardatos()
        caargar2()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Inicio.aspx")
    End Sub

    Sub Datos5()
        Try
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("SP_disponibilidadCita", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            da = New SqlDataAdapter(cmd)
            dt = New DataTable()
            da.Fill(dt)
            conexion.Open()
            cmd.ExecuteNonQuery()
            DdLdisponibilidad.DataSource = dt
            DdLdisponibilidad.DataTextField = "Estado"
            DdLdisponibilidad.DataValueField = "IdEstadoCita"
            DdLdisponibilidad.DataBind()


            conexion.Close()
        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try
    End Sub


    Sub MosificarCita(CitasId As Integer, UsuarioId As Integer, MedicoId As Integer, IdHorario As String, estado As Integer)

        'conexion = New SqlConnection(String_Conexion)
        'cmd = New SqlCommand("SP_InsertarCita", conexion)
        'cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 2
        cmd.Parameters.AddWithValue("@CitasId", CitasId)
        cmd.Parameters.AddWithValue("@UsuarioID", UsuarioId)
        cmd.Parameters.AddWithValue("@MedicoID", MedicoId)
        cmd.Parameters.AddWithValue("@IdHorario", IdHorario)
        cmd.Parameters.AddWithValue("@IdEstadoCita", estado)

        conexion.Open()
        cmd.ExecuteNonQuery()
        conexion.Close()
    End Sub

End Class

