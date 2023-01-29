Imports System.Data.SqlClient
Imports Negocios

Public Class Formulario_web19
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


        If (Session("IdUsuario") = 1) Then
            Try
                Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Clientes; Password= 1234;"
                Try
                    conexion = New SqlConnection(String_Conexion)
                    cmd = New SqlCommand("SP_BuscarUsuario", conexion)
                    cmd.CommandType = System.Data.CommandType.StoredProcedure
                    cmd.Parameters.Add("@Idusario", SqlDbType.Int).Value = Tbidentificacion.Text
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
                    cmd = New SqlCommand("SP_BuscarUsuario", conexion)
                    cmd.CommandType = System.Data.CommandType.StoredProcedure
                    cmd.Parameters.Add("@Idusario", SqlDbType.Int).Value = Tbidentificacion.Text
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



    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If (Session("Identificacion") = Tbidentificacion.Text) Then
            Datos1()
        End If
    End Sub
End Class