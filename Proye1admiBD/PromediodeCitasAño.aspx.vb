Imports System.Data.SqlClient
Imports System.Diagnostics.Eventing.Reader
Imports System.Reflection.Emit
Imports Negocios

Public Class Formulario_web119
    Inherits System.Web.UI.Page
    Dim Obj_Horario As New Hora
    Dim String_Conexion As String
    Public conexion As SqlConnection
    Public cmd As SqlCommand
    Public rd As SqlDataReader
    Public da As SqlDataAdapter
    Public dt As DataTable
    Public Reader As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

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
    Sub Datos6()
        Conectar()


        Try
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("sp_Resumen_citas_estado", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 1

            conexion.Open()
            da = New SqlDataAdapter(cmd)
            dt = New DataTable()
            da.Fill(dt)

            cmd.ExecuteNonQuery()

            Datos.DataSource = dt
            Datos.DataBind()
            conexion.Close()

        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try

    End Sub

    Sub Datos7()

        Conectar()

        Try
                conexion = New SqlConnection(String_Conexion)
                cmd = New SqlCommand("sp_Resumen_citas_estado", conexion)
                cmd.CommandType = System.Data.CommandType.StoredProcedure
                cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 2

                conexion.Open()
                da = New SqlDataAdapter(cmd)
                dt = New DataTable()
                da.Fill(dt)

                cmd.ExecuteNonQuery()

            Datos.DataSource = dt
                Datos.DataBind()
                conexion.Close()
            Catch ex As Exception
                lblError.Text = "Error al cargar los datos:  " + ex.Message
            End Try

    End Sub
    Sub Datos8()
        Conectar()



        Try

            Try
                conexion = New SqlConnection(String_Conexion)
                cmd = New SqlCommand("sp_Resumen_citas_estado", conexion)
                cmd.CommandType = System.Data.CommandType.StoredProcedure
                cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 3

                conexion.Open()
                da = New SqlDataAdapter(cmd)
                dt = New DataTable()
                da.Fill(dt)

                cmd.ExecuteNonQuery()

                Datos.DataSource = dt
                Datos.DataBind()
                conexion.Close()

            Catch ex As Exception
                lblError.Text = "Error al cargar los datos:  " + ex.Message
            End Try
        Catch ex As Exception
            lblError.Text = ex.Message
        End Try





    End Sub


    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        If DropDownList2.SelectedValue = 0 Then

            Datos6()


        ElseIf DropDownList2.SelectedValue = 1 Then

            Datos7()


        ElseIf DropDownList2.SelectedValue = 2 Then
            Try

                Datos8()



            Catch ex As Exception
                lblError.Text = "Error al cargar los datos:  " + ex.Message
            End Try


        End If

    End Sub
End Class