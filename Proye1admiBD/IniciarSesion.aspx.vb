Imports System.Data.SqlClient
Imports Microsoft.SqlServer.Server

Public Class IniciarSesion
    Inherits System.Web.UI.Page
    Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Usuario; Password= 1234;"
    Public conexion As SqlConnection
    Public cmd As SqlCommand
    Public rd As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Public Sub BtnIngresar_Click(sender As Object, e As EventArgs) Handles BtnIngresar.Click

        Try
            'conexion = New SqlConnection(String_Conexion)
            'cmd = New SqlCommand("InicioSesion", conexion)
            'cmd.CommandType = CommandType.StoredProcedure
            'cmd.Parameters.Add("@Usuario", SqlDbType.VarChar).Value = TxtUsusario.Text
            'cmd.Parameters.Add("@Contrasena", SqlDbType.Char).Value = Txtcontrasena.Text
            'conexion.Open()
            'rd = cmd.ExecuteReader()
            'If (rd.Read()) Then
            '    Session("Identificacion") = rd(0).ToString()
            '    Session("Nombre") = rd(1).ToString
            '    Session("PrimerApellido") = rd(2).ToString
            '    Session("SegundoApellido") = rd(3).ToString
            '    Session("FechaNacimiento") = rd(4).ToString
            '    Session("CorreoElectronico") = rd(5).ToString
            '    Session("Telefono") = rd(6).ToString
            '    Session("Contrasena") = rd(7).ToString
            '    Session("IdEstado") = rd(8).ToString
            '    Session("IdUsuario") = rd(9).ToString()
            datos()

            If (Session("IdUsuario") = 1) Then
                Response.Redirect("Inicio.aspx")

            End If

            If (Session("IdUsuario") = 2) Then
                datos2()
                Response.Redirect("Inicio.aspx")

            End If

            If (Session("IdUsuario") = 3) Then
                datos1()
                Response.Redirect("Inicio.aspx")
            End If

            If (Session("IdUsuario") = 4) Then
                datos()
                Response.Redirect("Inicio.aspx")

            End If


            'End If


        Catch ex As Exception

        End Try
    End Sub


    Sub datos()



        conexion = New SqlConnection(String_Conexion)
        cmd = New SqlCommand("InicioSesion", conexion)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@Usuario", SqlDbType.VarChar).Value = TxtUsusario.Text
        cmd.Parameters.Add("@Contrasena", SqlDbType.Char).Value = Txtcontrasena.Text
        conexion.Open()
        rd = cmd.ExecuteReader()
        If (rd.Read()) Then

            Session("Identificacion") = rd(0).ToString()
            Session("Nombre") = rd(1).ToString
            Session("PrimerApellido") = rd(2).ToString
            Session("SegundoApellido") = rd(3).ToString
            Session("FechaNacimiento") = rd(4).ToString
            Session("CorreoElectronico") = rd(5).ToString
            Session("Telefono") = rd(6).ToString
            Session("Contrasena") = rd(7).ToString
            Session("IdEstado") = rd(8).ToString
            Session("IdUsuario") = rd(9).ToString()
            Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Clientes; Password= 1234;"
        End If

    End Sub

    Sub datos1()



        conexion = New SqlConnection(String_Conexion)
        cmd = New SqlCommand("InicioSesion", conexion)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@Usuario", SqlDbType.VarChar).Value = TxtUsusario.Text
        cmd.Parameters.Add("@Contrasena", SqlDbType.Char).Value = Txtcontrasena.Text
        conexion.Open()
        rd = cmd.ExecuteReader()
        If (rd.Read()) Then

            Session("Identificacion") = rd(0).ToString()
            Session("Nombre") = rd(1).ToString
            Session("PrimerApellido") = rd(2).ToString
            Session("SegundoApellido") = rd(3).ToString
            Session("FechaNacimiento") = rd(4).ToString
            Session("CorreoElectronico") = rd(5).ToString
            Session("Telefono") = rd(6).ToString
            Session("Contrasena") = rd(7).ToString
            Session("IdEstado") = rd(8).ToString
            Session("IdUsuario") = rd(9).ToString()

            Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Empleados; Password= 1234;"
        End If

    End Sub

    Sub datos2()



        conexion = New SqlConnection(String_Conexion)
        cmd = New SqlCommand("InicioSesion", conexion)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@Usuario", SqlDbType.VarChar).Value = TxtUsusario.Text
        cmd.Parameters.Add("@Contrasena", SqlDbType.Char).Value = Txtcontrasena.Text
        conexion.Open()
        rd = cmd.ExecuteReader()
        If (rd.Read()) Then

            Session("Identificacion") = rd(0).ToString()
            Session("Nombre") = rd(1).ToString
            Session("PrimerApellido") = rd(2).ToString
            Session("SegundoApellido") = rd(3).ToString
            Session("FechaNacimiento") = rd(4).ToString
            Session("CorreoElectronico") = rd(5).ToString
            Session("Telefono") = rd(6).ToString
            Session("Contrasena") = rd(7).ToString
            Session("IdEstado") = rd(8).ToString
            Session("IdUsuario") = rd(9).ToString()
            Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Gerente; Password= 1234;"
        End If

    End Sub

End Class