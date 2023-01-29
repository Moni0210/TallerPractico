Imports System.Data.SqlClient

Public Class Formulario_web118
    Inherits System.Web.UI.Page
    Public conexion As SqlConnection
    Public cmd As SqlCommand
    Public rd As SqlDataReader
    Public da As SqlDataAdapter
    Public dt As DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click

        If (Session("IdUsuario") = 2) Then
            Try
                Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Empleados; Password= 1234;"
                If DropDownList2.SelectedValue = 1 Then

                    If DropDownList1.SelectedValue = 1 Then

                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 1
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 1
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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



                    ElseIf DropDownList1.SelectedValue = 2 Then
                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 1
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 2
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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

                    End If


                ElseIf DropDownList2.SelectedValue = 2 Then

                    If DropDownList1.SelectedValue = 1 Then

                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 2
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 0
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 1
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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



                    ElseIf DropDownList1.SelectedValue = 2 Then
                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 2
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 0
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 2
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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

                    End If

                ElseIf DropDownList2.SelectedValue = 3 Then
                    If DropDownList1.SelectedValue = 1 Then

                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 3
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 0
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 1
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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



                    ElseIf DropDownList1.SelectedValue = 2 Then
                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 3
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 0
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 2
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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

                    End If

                ElseIf DropDownList2.SelectedValue = 4 Then
                    If DropDownList1.SelectedValue = 1 Then

                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 4
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 0
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 1
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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



                    ElseIf DropDownList1.SelectedValue = 2 Then
                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 4
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 0
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 2
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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

                    End If

                ElseIf DropDownList2.SelectedValue = 4 Then
                    If DropDownList1.SelectedValue = 1 Then

                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 5
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 0
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 1
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



                    ElseIf DropDownList1.SelectedValue = 2 Then
                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 5
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value =
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 2
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

                    End If


                End If
            Catch ex As Exception
                lblError.Text = ex.Message
            End Try


        End If




        If (Session("IdUsuario") = 3) Then
            Try
                Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Gerente; Password= 1234;"



                If DropDownList2.SelectedValue = 1 Then

                    If DropDownList1.SelectedValue = 1 Then

                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 1
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 1
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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



                    ElseIf DropDownList1.SelectedValue = 2 Then
                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 1
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 2
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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

                    End If


                ElseIf DropDownList2.SelectedValue = 2 Then

                    If DropDownList1.SelectedValue = 1 Then

                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 2
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 0
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 1
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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



                    ElseIf DropDownList1.SelectedValue = 2 Then
                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 2
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 0
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 2
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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

                    End If

                ElseIf DropDownList2.SelectedValue = 3 Then
                    If DropDownList1.SelectedValue = 1 Then

                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 3
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 0
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 1
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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



                    ElseIf DropDownList1.SelectedValue = 2 Then
                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 3
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 0
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 2
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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

                    End If

                ElseIf DropDownList2.SelectedValue = 4 Then
                    If DropDownList1.SelectedValue = 1 Then

                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 4
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 0
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 1
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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



                    ElseIf DropDownList1.SelectedValue = 2 Then
                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 4
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 0
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 2
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 0
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

                    End If

                ElseIf DropDownList2.SelectedValue = 4 Then
                    If DropDownList1.SelectedValue = 1 Then

                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 5
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = 0
                            cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 1
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



                    ElseIf DropDownList1.SelectedValue = 2 Then
                        Try
                            conexion = New SqlConnection(String_Conexion)
                            cmd = New SqlCommand("OrdenarCitas", conexion)
                            cmd.CommandType = System.Data.CommandType.StoredProcedure
                            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 5
                            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value =
                    cmd.Parameters.Add("@CitasTotal", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasCancelada", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = 0
                            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = 2
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

                    End If


                End If
            Catch ex As Exception
                lblError.Text = ex.Message
            End Try

        End If

    End Sub
End Class