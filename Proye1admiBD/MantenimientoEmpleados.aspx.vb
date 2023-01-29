﻿Imports Negocios
Imports System.Data.SqlClient

Public Class Formulario_web13
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
        Datos1()
    End Sub


    Sub Datos1()

        If (Session("IdUsuario") = 2) Then
            Try
                Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Empleados; Password= 1234;"
                Try


                    conexion = New SqlConnection(String_Conexion)
                    cmd = New SqlCommand("[sp_leer_empleado", conexion)
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


        End If

        If (Session("IdUsuario") = 3) Then
            Try
                Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Gerente; Password= 1234;"
                Try


                    conexion = New SqlConnection(String_Conexion)
                    cmd = New SqlCommand("sp_leer_empleado", conexion)
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

        End If

    End Sub

    Protected Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click

        Try

                    Registrar1(tbId.Text, tbNombres.Text, tbApellidos1.Text, tbApellidos2.Text, tbFecha.Text, tbCorreo.Text, TbTelefono.Text, TbContrasena.Text, DropDownList1.Text, Label9.Text)
                    lblError.Text = " Los datos se agregaron correctamente  "

        Catch ex As Exception
                lblError.Text = ex.Message
            End Try


    End Sub

    Protected Sub Datos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Datos.SelectedIndexChanged
        Try
            tbId.Text = Datos.Rows(Datos.SelectedIndex).Cells(1).Text
            tbNombres.Text = Datos.Rows(Datos.SelectedIndex).Cells(2).Text
            tbApellidos1.Text = Datos.Rows(Datos.SelectedIndex).Cells(3).Text
            tbApellidos2.Text = Datos.Rows(Datos.SelectedIndex).Cells(4).Text
            tbFecha.Text = Datos.Rows(Datos.SelectedIndex).Cells(5).Text
            tbCorreo.Text = Datos.Rows(Datos.SelectedIndex).Cells(6).Text
            TbTelefono.Text = Datos.Rows(Datos.SelectedIndex).Cells(7).Text
            TbContrasena.Text = Datos.Rows(Datos.SelectedIndex).Cells(8).Text
            Label10.Text = Datos.Rows(Datos.SelectedIndex).Cells(11).Text
            'DropDownList1.Text = Datos.Rows(Datos.SelectedIndex).Cells(9).Text
            'Label9.Text = Datos.Rows(Datos.SelectedIndex).Cells(10).Text



            'TxtEliminar.Text = DgvClientes.Rows(DgvClientes.SelectedIndex).Cells(1).Text
            lblError.Text = ""
        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try
    End Sub

    Protected Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        Try

            Modificar(tbId.Text, tbNombres.Text, tbApellidos1.Text, tbApellidos2.Text, tbFecha.Text, tbCorreo.Text, TbTelefono.Text, TbContrasena.Text, DropDownList1.Text, Label9.Text, TextBox1.Text)
            lblError.Text = " Los datos se modificaron correctamente  "
        Catch ex As Exception
            lblError.Text = "Error agregar los datos:  " + ex.Message
        End Try

    End Sub

    Protected Sub Button12_Click(sender As Object, e As EventArgs) Handles Button12.Click
        Try

            Eliminar1(tbId.Text, tbNombres.Text, tbApellidos1.Text, tbApellidos2.Text, tbFecha.Text, tbCorreo.Text, TbTelefono.Text, TbContrasena.Text, DropDownList1.Text, Label9.Text)
            lblError.Text = " Los datos se eliminaron correctamente  "
        Catch ex As Exception
            lblError.Text = "Error al eliminar los datos:  " + ex.Message
        End Try
    End Sub

    Sub Registrar1(identificacion As Integer, Nombre As String, PrimerApellido As String, SegundoApellido As String, FechaNacimiento As String, Email As String, Telefono As String, Contrasena As String, idEstado As Integer, idUsuario As Integer)


        conectar()
        cmd = New SqlCommand("sp_registrarUsuario", conexion)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@Identificacion", identificacion)
        cmd.Parameters.AddWithValue("@Nombre", Nombre)
        cmd.Parameters.AddWithValue("@Primerapellido", PrimerApellido)
        cmd.Parameters.AddWithValue("@SegundoApellido", SegundoApellido)
        cmd.Parameters.AddWithValue("@FechaNacimiento", FechaNacimiento)
        cmd.Parameters.AddWithValue("@CorreoElectronico", Email)
        cmd.Parameters.AddWithValue("@Telefono", Telefono)
        cmd.Parameters.AddWithValue("@Contrasena ", Contrasena)
        cmd.Parameters.AddWithValue("@IdEstado", idEstado)
        cmd.Parameters.AddWithValue("@IdUsuario", idUsuario)

        conexion.Open()
        cmd.ExecuteNonQuery()
        conexion.Close()
    End Sub

    Sub conectar()
        If (Session("IdUsuario") = 2) Then
            Try
                Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Empleados; Password= 1234;"

            Catch ex As Exception
                lblError.Text = ex.Message
            End Try


        End If

        If (Session("IdUsuario") = 3) Then
            Try
                Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Gerente; Password= 1234;"

            Catch ex As Exception
                lblError.Text = ex.Message
            End Try

        End If

    End Sub
    Sub Eliminar1(identificacion As Integer, Nombre As String, PrimerApellido As String, SegundoApellido As String, FechaNacimiento As String, Email As String, Telefono As String, Contrasena As String, idEstado As Integer, idUsuario As Integer)

        conectar()
        cmd = New SqlCommand("Crud", conexion)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 3
        cmd.Parameters.AddWithValue("@Identificacion", identificacion)
        cmd.Parameters.AddWithValue("@Nombre", Nombre)
        cmd.Parameters.AddWithValue("@Primerapellido", PrimerApellido)
        cmd.Parameters.AddWithValue("@SegundoApellido", SegundoApellido)
        cmd.Parameters.AddWithValue("@FechaNacimiento", FechaNacimiento)
        cmd.Parameters.AddWithValue("@CorreoElectronico", Email)
        cmd.Parameters.AddWithValue("@Telefono", Telefono)
        cmd.Parameters.AddWithValue("@Contrasena ", Contrasena)
        cmd.Parameters.AddWithValue("@IdEstado", idEstado)
        cmd.Parameters.AddWithValue("@IdUsuario", idUsuario)

        conexion.Open()
        cmd.ExecuteNonQuery()
        conexion.Close()
    End Sub


    Sub Modificar(identificacion As Integer, Nombre As String, PrimerApellido As String, SegundoApellido As String, FechaNacimiento As String, Email As String, Telefono As String, Contrasena As String, idEstado As Integer, idUsuario As Integer, ts As Long)

        conectar()
        cmd = New SqlCommand("Crud", conexion)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@parametro", SqlDbType.Int).Value = 2
        cmd.Parameters.AddWithValue("@Identificacion", identificacion)
        cmd.Parameters.AddWithValue("@Nombre", Nombre)
        cmd.Parameters.AddWithValue("@Primerapellido", PrimerApellido)
        cmd.Parameters.AddWithValue("@SegundoApellido", SegundoApellido)
        cmd.Parameters.AddWithValue("@FechaNacimiento", FechaNacimiento)
        cmd.Parameters.AddWithValue("@CorreoElectronico", Email)
        cmd.Parameters.AddWithValue("@Telefono", Telefono)
        cmd.Parameters.AddWithValue("@Contrasena ", Contrasena)
        cmd.Parameters.AddWithValue("@IdEstado", idEstado)
        cmd.Parameters.AddWithValue("@IdUsuario", idUsuario)
        cmd.Parameters.AddWithValue("@ts", ts)

        conexion.Open()
        cmd.ExecuteNonQuery()
        conexion.Close()
    End Sub

End Class
