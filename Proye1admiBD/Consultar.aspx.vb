Imports System.Data.SqlClient

Public Class Consultar
    Inherits System.Web.UI.Page
    Public conexion As SqlConnection
    Public cmd As SqlCommand
    Public rd As SqlDataReader
    Public da As SqlDataAdapter
    Public dt As DataTable
    Public Reader As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Datos1()
    End Sub


    Sub Datos1()
        Try
            Dim String_Conexion = "Data Source=tiusr2pl.cuc-carrera-ti.ac.cr\MSSQLSERVER2019;Initial Catalog=tiusr2pl_agenda_g1; User ID=grupo1_ti; Password=holamundo"
            Try
                conexion = New SqlConnection(String_Conexion)
                cmd = New SqlCommand("SP_consultar_usuarios", conexion)
                cmd.CommandType = System.Data.CommandType.StoredProcedure
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
    End Sub

End Class