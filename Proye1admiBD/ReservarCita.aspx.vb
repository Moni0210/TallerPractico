Imports System.Data.SqlClient
Imports Negocios

Public Class Formulario_web17
    Inherits System.Web.UI.Page
    Dim String_Conexion As String

    'Dim String_Conexion As String = "Data Source=LAPTOP-59A9TSFS;Initial Catalog=AdmiProyecto1;Integrated Security=True"
    Public conexion As SqlConnection
    Public cmd As SqlCommand
    Public rd As SqlDataReader
    Public da As SqlDataAdapter
    Public dt As DataTable
    Public Reader As SqlDataReader
    Dim obj_citas As New Cita

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Page.IsPostBack = False Then
            Datos1()
            Datos4()
            Datos5()

        End If


    End Sub
    Sub conectar()
        If (Session("IdUsuario") = 1) Then
            Try
                String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Clientes; Password= 1234;"

            Catch ex As Exception
                lblError.Text = ex.Message
            End Try


        End If

        If (Session("IdUsuario") = 3) Then
            Try
                String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Gerente; Password= 1234;"

            Catch ex As Exception
                lblError.Text = ex.Message
            End Try

        End If
    End Sub


    Sub Datos1()
        Try
            conectar()
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("SP_DropBoxCita", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 1
            da = New SqlDataAdapter(cmd)
            dt = New DataTable()
            da.Fill(dt)
            conexion.Open()
            cmd.ExecuteNonQuery()
            DdlDoctor.DataSource = dt
            DdlDoctor.DataTextField = "Nombre"
            DdlDoctor.DataValueField = "IdDoctor"
            DdlDoctor.DataBind()
            DdlDoctor.Items.Insert(0, New ListItem("Seleccionar", 0))

            conexion.Close()
        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try
    End Sub

    Sub Datos5()
        Try
            conectar()
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

    Sub Datos3()
        'Try
        '    'Dim doc As Integer = Convert.ToInt32(DdlDoctor.SelectedValue)
        '    conexion = New SqlConnection(String_Conexion)
        '    cmd = New SqlCommand("SP_DropBoxFecha", conexion)
        '    cmd.CommandType = System.Data.CommandType.StoredProcedure
        '    cmd.Parameters.Add("@idDoctor1", SqlDbType.Int).Value = Convert.ToInt32(DdlDoctor.SelectedValue)
        '    da = New SqlDataAdapter(cmd)
        '    dt = New DataTable()
        '    da.Fill(dt)
        '    conexion.Open()
        '    cmd.ExecuteNonQuery()
        '    DdlFecha.DataSource = dt
        '    DdlFecha.DataTextField = "Fecha"
        '    DdlFecha.DataValueField = "Fecha"
        '    DdlFecha.DataBind()
        '    'DdlFecha.Items.Insert(0, New ListItem("Seleccionar", 0))

        '    conexion.Close()
        'Catch ex As Exception
        '    lblError.Text = "Error al cargar los datos:  " + ex.Message
        'End Try
    End Sub

    Sub Datos2()
        'Try
        '    Dim doc As Integer = Convert.ToInt32(DdlDoctor.SelectedValue)
        '    Dim fe As Integer = Convert.ToInt32(DdlFecha.SelectedValue)
        '    conexion = New SqlConnection(String_Conexion)
        '    cmd = New SqlCommand("SP_DropBoxhora", conexion)
        '    cmd.CommandType = System.Data.CommandType.StoredProcedure
        '    cmd.Parameters.Add("@fecha ", SqlDbType.Int).Value = fe
        '    cmd.Parameters.Add(" @idDoctor", SqlDbType.Int).Value = doc
        '    da = New SqlDataAdapter(cmd)
        '    dt = New DataTable()
        '    da.Fill(dt)
        '    conexion.Open()
        '    cmd.ExecuteNonQuery()
        '    DdlHora.DataSource = dt
        '    DdlHora.DataTextField = "hora"
        '    DdlHora.DataValueField = "hora"
        '    DdlHora.DataBind()
        '    DdlHora.Items.Insert(0, New ListItem("Seleccionar", 0))

        '    conexion.Close()
        'Catch ex As Exception
        '    lblError.Text = "Error al cargar los datos:  " + ex.Message
        'End Try
    End Sub

    Sub Datos4()
        Try
            conectar()
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("SP_listaCita", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            conexion.Open()
            da = New SqlDataAdapter(cmd)
            dt = New DataTable()
            da.Fill(dt)
            Datos.DataSource = dt
            Datos.DataBind()
            conexion.Close()
        Catch ex As Exception
            lblError.Text = "Error al leer los datos:  " + ex.Message
        End Try
    End Sub

    Protected Sub Datos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Datos.SelectedIndexChanged
        Try

            TbIdHorario.Text = Datos.Rows(Datos.SelectedIndex).Cells(1).Text
            TbidDoctor.Text = Datos.Rows(Datos.SelectedIndex).Cells(2).Text

            TbFecha.Text = Datos.Rows(Datos.SelectedIndex).Cells(4).Text
            Tbhora.Text = Datos.Rows(Datos.SelectedIndex).Cells(5).Text
            lblError.Text = ""
        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try
    End Sub

    Protected Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click

        Try

            RegistrarCita(tbId.Text, tbIdentificacion.Text, TbIdHorario.Text, TbidDoctor.Text, DdLdisponibilidad.Text)
        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try
    End Sub

    Protected Sub Button12_Click(sender As Object, e As EventArgs) Handles Button12.Click
        Response.Redirect("Inicio.aspx")
    End Sub


    Sub RegistrarCita(CitasId As Integer, UsuarioId As Integer, MedicoId As Integer, IdHorario As String, estado As Integer)
        conectar()
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

End Class