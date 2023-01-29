Imports System.Data.SqlClient

Public Class Formulario_web117
    Inherits System.Web.UI.Page
    Dim String_Conexion As String
    Public conexion As SqlConnection
    Public cmd As SqlCommand
    Public rd As SqlDataReader
    Public da As SqlDataAdapter
    Public dt As DataTable
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

    End Sub

    Sub Datos3()
        conectar()
        Try

            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("_SPCitasPormesCantidad", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@fechaI", SqlDbType.Date).Value = tbFecha.Text
            cmd.Parameters.Add("@fechaf", SqlDbType.Date).Value = TbFinal.Text
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
        conectar()
        Try
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("_SPCargarListaPorcentajeporMes", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@fechaI", SqlDbType.Date).Value = tbFecha.Text
            cmd.Parameters.Add("@fechaf", SqlDbType.Date).Value = TbFinal.Text
            cmd.Parameters.Add("@suma", SqlDbType.Int).Value = 0
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

    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        conectar()
        If DropDownList2.SelectedValue = 0 Then
            lblError.Text = "  "
            Datos3()
        ElseIf DropDownList2.SelectedValue = 1 Then
            lblError.Text = "   "

            Datos4()
        End If
    End Sub

    Protected Sub Datos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Datos.SelectedIndexChanged
        conectar()
        TextBox12.Text = Datos.Rows(Datos.SelectedIndex).Cells(1).Text
            TextBox13.Text = Datos.Rows(Datos.SelectedIndex).Cells(2).Text
            TextBox14.Text = Datos.Rows(Datos.SelectedIndex).Cells(3).Text
            TextBox15.Text = Datos.Rows(Datos.SelectedIndex).Cells(4).Text
            TextBox16.Text = Datos.Rows(Datos.SelectedIndex).Cells(5).Text


        If DropDownList2.SelectedValue = 0 Then
            conectar()
            lblError.Text = "   "
            Try


                conexion = New SqlConnection(String_Conexion)
                cmd = New SqlCommand("_SPInsertarListaCantidadporMes", conexion)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.Add("@fecha", SqlDbType.Date).Value = tbFecha.Text
                cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = TextBox12.Text
                cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = TextBox13.Text
                cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = TextBox14.Text
                cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = TextBox15.Text
                cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = TextBox16.Text

                conexion.Open()
                cmd.ExecuteNonQuery()
                conexion.Close()



                lblError.Text = "Se guardaronn los datos "
            Catch ex As Exception
                lblError.Text = "Error al cargar los datos:  " + ex.Message
            End Try

        ElseIf DropDownList2.SelectedValue = 1 Then
            conectar()
            lblError.Text = "   "
            Try
                conexion = New SqlConnection(String_Conexion)
                cmd = New SqlCommand("_SPInsertarListaPorcentajeporMes", conexion)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.Add("@fecha", SqlDbType.Date).Value = tbFecha.Text
                cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = TextBox12.Text
                    cmd.Parameters.Add("@CitasTotal", SqlDbType.VarChar).Value = TextBox13.Text
                    cmd.Parameters.Add("@CitasCancelada", SqlDbType.VarChar).Value = TextBox14.Text
                    cmd.Parameters.Add("@CitasEfectivas", SqlDbType.VarChar).Value = TextBox15.Text
                    cmd.Parameters.Add("@CitasPerdidas", SqlDbType.VarChar).Value = TextBox16.Text

                conexion.Open()
                cmd.ExecuteNonQuery()
                conexion.Close()
                lblError.Text = "Se guardaronn los datos "
            Catch ex As Exception
                lblError.Text = "Error al cargar los datos:  " + ex.Message
            End Try

        End If


    End Sub





    'Protected Sub Button16_Click(sender As Object, e As EventArgs) Handles Button16.Click

    'End Sub

    Sub limpiar()
        TextBox12.Text = " "
        TextBox13.Text = " "
        TextBox14.Text = " "
        TextBox15.Text = " "
        TextBox16.Text = " "



    End Sub
End Class