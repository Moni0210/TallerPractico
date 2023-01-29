Imports System.Data.SqlClient

Public Class Formulario_web115
    Inherits System.Web.UI.Page
    'Dim String_Conexion = "Data Source=LAPTOP-59A9TSFS;Initial Catalog=AdmiProyecto1;Integrated Security=True"
    Public conexion As SqlConnection
    Public cmd As SqlCommand
    Public rd As SqlDataReader
    Public da As SqlDataAdapter
    Public dt As DataTable
    Public Reader As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Sub Datos1()



        Try

            '    conexion = New SqlConnection(String_Conexion)
            'cmd = New SqlCommand("SP_ListaCancelacion", conexion)
            'cmd.CommandType = System.Data.CommandType.StoredProcedure
            'cmd.Parameters.Add("@Parametro", SqlDbType.Int).Value = 1
            'conexion.Open()
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

    Sub Datos2()
        Try
            'conexion = New SqlConnection(String_Conexion)
            'cmd = New SqlCommand("SP_ListaCancelacion", conexion)
            'cmd.CommandType = System.Data.CommandType.StoredProcedure
            'cmd.Parameters.Add("@Parametro", SqlDbType.Int).Value = 2
            'conexion.Open()
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

    'Sub Datos3()
    '    Try
    '        conexion = New SqlConnection(String_Conexion)
    '        cmd = New SqlCommand("  SP_ListaCancelacionBusca", conexion)
    '        cmd.CommandType = System.Data.CommandType.StoredProcedure
    '        cmd.Parameters.Add("@id", SqlDbType.Int).Value = Tbidentificacion.Text
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

    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        If (Session("IdUsuario") = 2) Then
            Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Empleados; Password= 1234;"


            If DropDownList2.SelectedValue = 0 Then
                conexion = New SqlConnection(String_Conexion)
                cmd = New SqlCommand("SP_ListaCancelacion", conexion)
                cmd.CommandType = System.Data.CommandType.StoredProcedure
                cmd.Parameters.Add("@Parametro", SqlDbType.Int).Value = 1
                conexion.Open()
                Datos1()
            ElseIf DropDownList2.SelectedValue = 1 Then
                conexion = New SqlConnection(String_Conexion)
                cmd = New SqlCommand("SP_ListaCancelacion", conexion)
                cmd.CommandType = System.Data.CommandType.StoredProcedure
                cmd.Parameters.Add("@Parametro", SqlDbType.Int).Value = 2
                conexion.Open()
                Datos2()
            End If

        End If

        If (Session("IdUsuario") = 3) Then

            Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Gerente; Password= 1234;"

            If DropDownList2.SelectedValue = 0 Then
                conexion = New SqlConnection(String_Conexion)
                cmd = New SqlCommand("SP_ListaCancelacion", conexion)
                cmd.CommandType = System.Data.CommandType.StoredProcedure
                cmd.Parameters.Add("@Parametro", SqlDbType.Int).Value = 1
                conexion.Open()
                Datos1()
            ElseIf DropDownList2.SelectedValue = 1 Then
                conexion = New SqlConnection(String_Conexion)
                cmd = New SqlCommand("SP_ListaCancelacion", conexion)
                cmd.CommandType = System.Data.CommandType.StoredProcedure
                cmd.Parameters.Add("@Parametro", SqlDbType.Int).Value = 2
                conexion.Open()
                Datos2()
            End If

        End If


    End Sub

    'Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
    '    Datos3()
    'End Sub
End Class