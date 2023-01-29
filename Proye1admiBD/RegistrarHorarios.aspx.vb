Imports System.Data.SqlClient
Imports System.Reflection.Emit
Imports Negocios

Public Class Formulario_web15
    Inherits System.Web.UI.Page
    Dim Obj_Horario As New Hora
    Dim String_Conexion As String
    Public conexion As SqlConnection
    Public cmd As SqlCommand
    Public rd As SqlDataReader
    Public da As SqlDataAdapter
    Public dt As DataTable
    Public Reader As SqlDataReader
    Sub conectar()


        If (Session("IdUsuario") = 2) Then
            Try
                String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Empleados; Password= 1234;"
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
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            Datos1()
            Datos2()
            Datos3()
            Datos4()
            Datos5()
            TbDoctor.Visible = False
            tbhoras.Visible = False
            Tbfecha2.Visible = False
            tbCodigo.Visible = False
            Label3.Visible = False
            DropDownList4.Visible = False
        End If
        TbDoctor.Visible = False
        tbhoras.Visible = False
        Tbfecha2.Visible = False
        tbCodigo.Visible = False
        Label3.Visible = False

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Inicio.aspx")
    End Sub

    Protected Sub BtnIngresar_Click(sender As Object, e As EventArgs) Handles BtnIngresar.Click


        If BtnIngresar.Text = "Registrar horarios" Then

            Try
                If IsPostBack Then
                    RegistrarHorario(TbFecha.Text, DropDownList2.Text, DropDownList1.Text, DropDownList3.Text)
                End If

                lblError.Text = "Los datos se registraron corretamente"
            Catch ex As Exception
                lblError.Text = "Error al cargar los datos:  " + ex.Message
            End Try


            'Try
            '    Obj_Horario.IdHorario1 = tbCodigo.Text
            '    Obj_Horario.Fecha1 = (TbFecha.Text)
            '    'Obj_Horario.Horas1 = tbhoras.Text
            '    Obj_Horario.IdDoctor1 = Tbid.Text
            '    Obj_Horario.IdDisponibilidad1 = DropDownList3.Text
            '    Obj_Horario.ModificarHorario()

            '    lblError.Text = "Los datos se atualizaron corretamente"
            'Catch ex As Exception
            '    lblError.Text = "Error al cargar los datos:  " + ex.Message
            'End Try
        ElseIf BtnIngresar.Text = "Modificar horarios" Then

            conectar()


            Try
                conexion = New SqlConnection(String_Conexion)
                cmd = New SqlCommand("SP_CrudHorario", conexion)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 2
                'cmd.Parameters.Add("@HorarioId", SqlDbType.Int).Value = tbCodigo.Text
                cmd.Parameters.Add("@Fecha", SqlDbType.Date).Value = Tbfecha2.Text
                cmd.Parameters.Add("@Horas", SqlDbType.Time).Value = tbhoras.Text
                cmd.Parameters.Add("@IdDoctor", SqlDbType.Int).Value = Tbid.Text
                cmd.Parameters.Add("@IDDisponibilidad", SqlDbType.Int).Value = DropDownList4.Text
                conexion.Open()
                cmd.ExecuteNonQuery()
                conexion.Close()
                lblError.Text = "Los datos se actulizaron "
            Catch ex As Exception
                lblError.Text = "Los datos no se pudieron actulizar  " + ex.Message
            End Try
            DropDownList2.Visible = True
            DropDownList1.Visible = True
            TbFecha.Visible = True
            DropDownList3.Visible = True

        End If
        BtnIngresar.Text = "Registrar horarios"
    End Sub



    'Public Sub loadingCombo()


    '    Dim table As New DataTable
    '    Dim sql As String = "SELECT Estado,Nombre FROM Estado"
    '    Dim adp As New SqlDataAdapter(sql, conexion)

    '    adp.Fill(table)

    '    cboCambioEstado.DataSource = table
    '    cboCambioEstado.DisplayMember = "Nombre"
    '    cboCambioEstado.ValueMember = "Estado"
    'End Sub
    Sub Datos1()
        conectar()
        Try
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("SP_DropBoxHorario", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 1


            da = New SqlDataAdapter(cmd)
            dt = New DataTable()
            da.Fill(dt)
            conexion.Open()
            cmd.ExecuteNonQuery()
            DropDownList1.DataSource = dt
            DropDownList1.DataTextField = "NombreDoctor"
            DropDownList1.DataValueField = "identificacion"
            DropDownList1.DataBind()

            conexion.Close()
        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try
    End Sub

    Sub Datos2()
        conectar()
        Try
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("SP_DropBoxHorario", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 2


            da = New SqlDataAdapter(cmd)
            dt = New DataTable()
            da.Fill(dt)
            conexion.Open()
            cmd.ExecuteNonQuery()
            DropDownList2.DataSource = dt
            DropDownList2.DataTextField = "hora"
            DropDownList2.DataValueField = "hora"
            DropDownList2.DataBind()

            conexion.Close()
        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try
    End Sub

    Sub Datos3()
        conectar()
        Try
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("SP_DropBoxHorario", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 3


            da = New SqlDataAdapter(cmd)
            dt = New DataTable()
            da.Fill(dt)
            conexion.Open()
            cmd.ExecuteNonQuery()
            DropDownList3.DataSource = dt
            DropDownList3.DataTextField = "estado"
            DropDownList3.DataValueField = "IdDisponibilidaDoctor"
            DropDownList3.DataBind()

            conexion.Close()
        Catch ex As Exception
            lblError.Text = "Error al actulizar los datos:  " + ex.Message
        End Try
    End Sub

    Sub Datos5()
        conectar()
        Try
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("SP_DropBoxHorario", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 3
            da = New SqlDataAdapter(cmd)
            dt = New DataTable()
            da.Fill(dt)
            conexion.Open()
            cmd.ExecuteNonQuery()
            DropDownList4.DataSource = dt
            DropDownList4.DataTextField = "estado"
            DropDownList4.DataValueField = "IdDisponibilidaDoctor"
            DropDownList4.DataBind()

            conexion.Close()
        Catch ex As Exception
            lblError.Text = "Error al actulizar los datos:  " + ex.Message
        End Try
    End Sub
    Sub Datos4()
        conectar()
        Try
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("SP_LeerHorario", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            conexion.Open()
            da = New SqlDataAdapter(cmd)
            dt = New DataTable()
            da.Fill(dt)
            Datos.DataSource = dt
            Datos.DataBind()
            conexion.Close()
        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try
    End Sub

    Protected Sub Datos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Datos.SelectedIndexChanged
        conectar()
        Try
            tbCodigo.Text = Datos.Rows(Datos.SelectedIndex).Cells(1).Text
            Tbid.Text = Datos.Rows(Datos.SelectedIndex).Cells(1).Text
            TbDoctor.Text = Datos.Rows(Datos.SelectedIndex).Cells(2).Text
            Tbfecha2.Text = Datos.Rows(Datos.SelectedIndex).Cells(3).Text
            tbhoras.Text = Datos.Rows(Datos.SelectedIndex).Cells(4).Text


            'DropDownList1.Text = Datos.Rows(Datos.SelectedIndex).Cells(9).Text
            'Label9.Text = Datos.Rows(Datos.SelectedIndex).Cells(10).Text

            BtnIngresar.Text = "Modificar horarios"
            TbDoctor.Visible = True
            tbhoras.Visible = True
            Tbfecha2.Visible = True
            DropDownList2.Visible = False
            DropDownList1.Visible = False
            DropDownList3.Visible = False
            DropDownList4.Visible = True
            TbFecha.Visible = False
            tbCodigo.Visible = True
            Label3.Visible = True
            Datos5()
            If IsPostBack Then

            End If
            'TxtEliminar.Text = DgvClientes.Rows(DgvClientes.SelectedIndex).Cells(1).Text
            lblError.Text = ""
        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try
    End Sub

    Protected Sub Tbfecha2_TextChanged(sender As Object, e As EventArgs) Handles Tbfecha2.TextChanged

    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("RegistrarHora.aspx")
    End Sub


    Sub RegistrarHorario(Fecha As Date, Horas As String, IdDoctor As Integer, idisponible As Integer)
        conectar()
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



End Class