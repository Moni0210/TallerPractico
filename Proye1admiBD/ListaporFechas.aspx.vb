Imports System.Data.SqlClient

Public Class Formulario_web110
    Inherits System.Web.UI.Page

    Public conexion As SqlConnection
    Public cmd As SqlCommand
    Public rd As SqlDataReader
    Public da As SqlDataAdapter
    Public dt As DataTable
    Public Reader As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub



    Sub Datos1()

        If (Session("IdUsuario") = 2) Then
            Try
                Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Empleados; Password= 1234;"
                Try
                    conexion = New SqlConnection(String_Conexion)
                    cmd = New SqlCommand("SP_Listafechas", conexion)
                    cmd.CommandType = System.Data.CommandType.StoredProcedure
                    cmd.Parameters.Add("@Fecha1", SqlDbType.Date).Value = tbFecha1.Text
                    cmd.Parameters.Add("@Fecha2", SqlDbType.Date).Value = Tbfecha2.Text
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
            Catch ex As Exception
                lblError.Text = ex.Message
            End Try


        End If

        If (Session("IdUsuario") = 3) Then
            Try
                Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Gerente; Password= 1234;"
                Try
                    conexion = New SqlConnection(String_Conexion)
                    cmd = New SqlCommand("SP_Listafechas", conexion)
                    cmd.CommandType = System.Data.CommandType.StoredProcedure
                    cmd.Parameters.Add("@Fecha1", SqlDbType.Date).Value = tbFecha1.Text
                    cmd.Parameters.Add("@Fecha2", SqlDbType.Date).Value = Tbfecha2.Text
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
            Catch ex As Exception
                lblError.Text = ex.Message
            End Try

        End If

    End Sub

    Protected Sub BtnIngresar_Click(sender As Object, e As EventArgs) Handles BtnIngresar.Click
        Datos1()
    End Sub
End Class