Imports Negocios
Imports System.Data.SqlClient

Public Class Formulario_web121
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

    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        If DropDownList2.SelectedValue = 0 Then

            Datos3()


        ElseIf DropDownList2.SelectedValue = 1 Then

            Datos4()


        ElseIf DropDownList2.SelectedValue = 2 Then
            Try

                Datos5()



            Catch ex As Exception
                lblError.Text = "Error al cargar los datos:  " + ex.Message
            End Try


        End If
    End Sub

    Sub Conectar()
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


    Sub Datos3()
        Conectar()
        Try

            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("sp_Resumen_citas_SEMANAS", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@Fechai", SqlDbType.Date).Value = TextBox12.Text
            cmd.Parameters.Add("@Fechaf", SqlDbType.Date).Value = TextBox1.Text
            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 1
            conexion.Open()
            da = New SqlDataAdapter(cmd)
            dt = New DataTable()
            da.Fill(dt)
            Datos.DataSource = dt
            Datos.DataBind()
            conexion.Close()
        Catch ex As Exception
            lblError.Text = "Error al actulizar los datos:  " + ex.Message
        End Try
    End Sub


    Sub Datos4()
        Conectar()
        Try

            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("sp_Resumen_citas_SEMANAS", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@Fechai", SqlDbType.Date).Value = TextBox12.Text
            cmd.Parameters.Add("@Fechaf", SqlDbType.Date).Value = TextBox1.Text
            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 2
            conexion.Open()
            da = New SqlDataAdapter(cmd)
            dt = New DataTable()
            da.Fill(dt)
            Datos.DataSource = dt
            Datos.DataBind()
            conexion.Close()
        Catch ex As Exception
            lblError.Text = "Error al actulizar los datos:  " + ex.Message
        End Try
    End Sub

    Sub Datos5()
        Conectar()
        Try

            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("sp_Resumen_citas_SEMANAS", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@Fechai", SqlDbType.Date).Value = TextBox12.Text
            cmd.Parameters.Add("@Fechaf", SqlDbType.Date).Value = TextBox1.Text
            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 3
            conexion.Open()
            da = New SqlDataAdapter(cmd)
            dt = New DataTable()
            da.Fill(dt)
            Datos.DataSource = dt
            Datos.DataBind()
            conexion.Close()
        Catch ex As Exception
            lblError.Text = "Error al actulizar los datos:  " + ex.Message
        End Try
    End Sub


End Class