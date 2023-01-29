Imports Negocios
Imports System.Data.SqlClient
Imports System.Net

Public Class Horarios
    Inherits System.Web.UI.Page

    Dim obj_Usuario As New Usuario
    Dim id_rol As Integer = 0

    Public conexion As SqlConnection
    Public cmd As SqlCommand
    Public rd As SqlDataReader
    Public da As SqlDataAdapter
    Public dt As DataTable
    Public Reader As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnIngresar_Click(sender As Object, e As EventArgs) Handles BtnIngresar.Click

        If (Session("IdUsuario") = 2) Then
                Try
                    Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Empleados; Password= 1234;"
                Try

                    conexion = New SqlConnection(String_Conexion)
                    cmd = New SqlCommand("Sp_horas", conexion)
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Parameters.Add("@HoraI", SqlDbType.Time).Value = tbHoraI.Text
                    cmd.Parameters.Add("@HoraF", SqlDbType.Time).Value = tbHoraF.Text
                    cmd.Parameters.Add("@HoraM", SqlDbType.Int).Value = tbDuracion.Text
                    cmd.Parameters.Add("@Ho", SqlDbType.Int).Value = Label9.Text
                    cmd.Parameters.Add("@Ho1", SqlDbType.Int).Value = Label10.Text
                    'cmd.Parameters.AddWithValue("@HoraI", tbHoraI.Text)
                    'cmd.Parameters.AddWithValue("@Ho", tbHoraI.Text)

                    conexion.Open()
                    cmd.ExecuteNonQuery()
                    conexion.Close()
                    lblError.Text = "Los datos se actulizaron "
                Catch ex As Exception
                    lblError.Text = "Los datos no se pudieron actulizar  " + ex.Message
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
                    cmd = New SqlCommand("Sp_horas", conexion)
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Parameters.Add("@HoraI", SqlDbType.Time).Value = tbHoraI.Text
                    cmd.Parameters.Add("@HoraF", SqlDbType.Time).Value = tbHoraF.Text
                    cmd.Parameters.Add("@HoraM", SqlDbType.Int).Value = tbDuracion.Text
                    cmd.Parameters.Add("@Ho", SqlDbType.Int).Value = Label9.Text
                    cmd.Parameters.Add("@Ho1", SqlDbType.Int).Value = Label10.Text
                    'cmd.Parameters.AddWithValue("@HoraI", tbHoraI.Text)
                    'cmd.Parameters.AddWithValue("@Ho", tbHoraI.Text)

                    conexion.Open()
                    cmd.ExecuteNonQuery()
                    conexion.Close()
                    lblError.Text = "Los datos se actulizaron "
                Catch ex As Exception
                    lblError.Text = "Los datos no se pudieron actulizar  " + ex.Message
                End Try
            Catch ex As Exception
                    lblError.Text = ex.Message
                End Try

            End If


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

    End Sub


End Class