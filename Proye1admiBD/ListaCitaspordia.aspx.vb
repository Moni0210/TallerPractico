Imports System.Data.SqlClient

Public Class Formulario_web116
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
        Label5.Visible = False
        Label6.Visible = False
        Label7.Visible = False
        Label2.Visible = False
        Label3.Visible = False
        Label4.Visible = False
        Label9.Visible = False
        Label10.Visible = False

        TextBox7.Visible = False
        TextBox5.Visible = False
        TextBox8.Visible = False
        TextBox6.Visible = False
        TextBox9.Visible = False
        TextBox10.Visible = False
        TextBox11.Visible = False
        TextBox1.Visible = False
        TextBox2.Visible = False
        TextBox3.Visible = False
        TextBox4.Visible = False



    End Sub


    Sub Datos3()
        Try
            conectar()
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("SP_ListaCantidadCitas", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@fecha", SqlDbType.Date).Value = tbFecha.Text
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
        Try
            conectar()
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("SP_listaCitPorcentaje", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@Fecha", SqlDbType.Date).Value = tbFecha.Text
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


    Sub Datos5()
        Try
            conectar()
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("SP_ListaCantidadCitasCargartb", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@id", SqlDbType.Date).Value = tbFecha.Text
            conexion.Open()
            rd = cmd.ExecuteReader()
            If (rd.Read()) Then
                Session("Fecha") = rd(0).ToString()
                Session("TotalCitas") = rd(1).ToString()
                Session("CitasCanceladas") = rd(2).ToString()
                Session("Citasreservadas") = rd(3).ToString()
                Session("CitasEfectivas") = rd(4).ToString()
                Session("CitasPerdidas") = rd(5).ToString()
            End If
        Catch ex As Exception
            lblError.Text = "Error al actulizar los datos:  " + ex.Message
        End Try
    End Sub
    Protected Sub Datos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Datos.SelectedIndexChanged
        conectar()
        Try


            TextBox12.Text = Datos.Rows(Datos.SelectedIndex).Cells(1).Text
            TextBox13.Text = Datos.Rows(Datos.SelectedIndex).Cells(2).Text
            TextBox14.Text = Datos.Rows(Datos.SelectedIndex).Cells(3).Text
            TextBox15.Text = Datos.Rows(Datos.SelectedIndex).Cells(4).Text
            TextBox16.Text = Datos.Rows(Datos.SelectedIndex).Cells(5).Text
            TextBox17.Text = Datos.Rows(Datos.SelectedIndex).Cells(6).Text




            If DropDownList2.SelectedValue = 0 Then

                Try
                    Label5.Visible = False
                    Label6.Visible = False
                    Label7.Visible = False
                    Label2.Visible = False
                    Label3.Visible = False
                    Label4.Visible = False
                    Label9.Visible = False
                    Label10.Visible = False


                    TextBox7.Visible = False
                    TextBox5.Visible = False
                    TextBox8.Visible = False
                    TextBox6.Visible = False
                    TextBox9.Visible = False
                    TextBox10.Visible = False
                    TextBox11.Visible = False
                    TextBox1.Visible = False
                    TextBox2.Visible = False
                    TextBox3.Visible = False
                    TextBox4.Visible = False
                    Registrar()
                    limpiar()
                Catch ex As Exception
                    lblError.Text = "Error al insertar los datos:  " + ex.Message
                End Try
            ElseIf DropDownList2.SelectedValue = 1 Then
                Try
                    Label5.Visible = False
                    Label6.Visible = False
                    Label7.Visible = False
                    Label2.Visible = False
                    Label3.Visible = False
                    Label4.Visible = False
                    Label9.Visible = False
                    Label10.Visible = False

                    TextBox7.Visible = False
                    TextBox5.Visible = False
                    TextBox8.Visible = False
                    TextBox6.Visible = False
                    TextBox9.Visible = False
                    TextBox10.Visible = False
                    TextBox11.Visible = False
                    TextBox1.Visible = False
                    TextBox2.Visible = False
                    TextBox3.Visible = False
                    TextBox4.Visible = False

                    Registrar1()
                    limpiar()

                Catch ex As Exception
                    lblError.Text = "Error al cargar los datos:  " + ex.Message
                End Try

            End If

            'DropDownList1.Text = Datos.Rows(Datos.SelectedIndex).Cells(9).Text
            'Label9.Text = Datos.Rows(Datos.SelectedIndex).Cells(10).Text



            'TxtEliminar.Text = DgvClientes.Rows(DgvClientes.SelectedIndex).Cells(1).Text
            lblError.Text = "  "
        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try
    End Sub
    Sub cargar()
        Try
            conectar()
            Datos5()
            TextBox5.Text = Session("TotalCitas").ToString()
            TextBox10.Text = Session("CitasCanceladas").ToString()
            TextBox6.Text = Session("Citasreservadas").ToString()
            TextBox1.Text = Session("CitasEfectivas").ToString()
            TextBox3.Text = Session("CitasPerdidas").ToString()


        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try

    End Sub


    Sub Registrar()
        Try
            conectar()

            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("SP_ListaCantidadCitasInsertar", conexion)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add("@Fecha", SqlDbType.Date).Value = TextBox12.Text
            cmd.Parameters.Add("@TotalCitas", SqlDbType.Int).Value = TextBox13.Text
            cmd.Parameters.Add("@CitasCanceladas", SqlDbType.Int).Value = TextBox14.Text
            cmd.Parameters.Add("@Citasreservadas", SqlDbType.Int).Value = TextBox15.Text
            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.Int).Value = TextBox16.Text
            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.Int).Value = TextBox17.Text
            conexion.Open()
            cmd.ExecuteNonQuery()
            conexion.Close()

        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try
    End Sub

    Sub Registrar1()
        Try
            conectar()
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("SP_listaCitasPorcentajeInsertar", conexion)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add("@Fecha", SqlDbType.Date).Value = TextBox12.Text
            cmd.Parameters.Add("@TotalCitas", SqlDbType.VarChar).Value = (TextBox13.Text)
            cmd.Parameters.Add("@CitasCanceladas", SqlDbType.VarChar).Value = (TextBox14.Text)
            cmd.Parameters.Add("@Citasreservadas", SqlDbType.VarChar).Value = (TextBox15.Text)
            cmd.Parameters.Add("@CitasEfectivas", SqlDbType.VarChar).Value = TextBox16.Text
            cmd.Parameters.Add("@CitasPerdidas", SqlDbType.VarChar).Value = TextBox17.Text
            conexion.Open()
            cmd.ExecuteNonQuery()
            conexion.Close()
            lblError.Text = "Error  "
        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try
    End Sub


    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        If DropDownList2.SelectedValue = 0 Then
            Label5.Visible = False
            Label6.Visible = False
            Label7.Visible = False
            Label2.Visible = False
            Label3.Visible = False
            Label4.Visible = False
            Label9.Visible = False
            Label10.Visible = False

            TextBox7.Visible = False
            TextBox5.Visible = False
            TextBox8.Visible = False
            TextBox6.Visible = False
            TextBox9.Visible = False
            TextBox10.Visible = False
            TextBox11.Visible = False
            Datos3()


        ElseIf DropDownList2.SelectedValue = 1 Then
            Label5.Visible = False
            Label6.Visible = False
            Label7.Visible = False
            Label2.Visible = False
            Label3.Visible = False
            Label4.Visible = False
            Label9.Visible = False
            Label10.Visible = False

            TextBox7.Visible = False
            TextBox5.Visible = False
            TextBox8.Visible = False
            TextBox6.Visible = False
            TextBox9.Visible = False
            TextBox10.Visible = False
            TextBox11.Visible = False
            Datos4()


        ElseIf DropDownList2.SelectedValue = 3 Then
            Try
                Datos.Visible = False
                Label5.Visible = True
                Label6.Visible = True
                Label7.Visible = True
                Label2.Visible = True
                Label3.Visible = True
                Label4.Visible = True
                Label9.Visible = True
                Label10.Visible = True

                TextBox7.Visible = True
                TextBox5.Visible = True
                TextBox8.Visible = True
                TextBox6.Visible = True
                TextBox9.Visible = True
                TextBox10.Visible = True
                TextBox11.Visible = True
                TextBox1.Visible = True
                TextBox2.Visible = True
                TextBox3.Visible = True
                TextBox4.Visible = True
                'Datos2()
                cargar()
                cargar4()


            Catch ex As Exception
                lblError.Text = "Error al cargar los datos:  " + ex.Message
            End Try


        End If
    End Sub





    Sub limpiar()
        'TextBox12.Text = " "
        'TextBox13.Text = " "
        'TextBox14.Text = " "
        'TextBox15.Text = " "
        'TextBox16.Text = " "
        'TextBox17.Text = " "


    End Sub

    'Protected Sub Button16_Click(sender As Object, e As EventArgs) Handles Button16.Click

    '    cargar()
    '    cargar4()

    'End Sub

    'Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    '    Datos5()
    '    Try
    '        If (Session("IdUsuario") = 1) Then
    '            TextBox5.Text = Session("TotalCitas").ToString()
    '        Else
    '            lblError.Text = "Error al cargar los datos:  "
    '            TextBox5.Text = Session("TotalCitas").ToString()
    '        End If

    '    Catch ex As Exception
    '        lblError.Text = "Error al cargar los datos:  " + ex.Message
    '    End Try
    'End Sub
    Sub Datos6()
        Try
            conectar()
            conexion = New SqlConnection(String_Conexion)
            cmd = New SqlCommand("SP_Listaporcentajetb", conexion)
            cmd.CommandType = System.Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@id", SqlDbType.Date).Value = tbFecha.Text
            conexion.Open()
            rd = cmd.ExecuteReader()
            If (rd.Read()) Then
                Session("Fecha") = rd(0).ToString()
                Session("TotalCitas") = rd(1).ToString()
                Session("CitasCanceladas") = rd(2).ToString()
                Session("Citasreservadas") = rd(3).ToString()
                Session("CitasEfectivas") = rd(4).ToString()
                Session("CitasPerdidas") = rd(5).ToString()
            End If
        Catch ex As Exception
            lblError.Text = "Error al actulizar los datos:  " + ex.Message
        End Try
    End Sub
    Sub cargar4()
        conectar()

        Try
            Datos6()
            TextBox7.Text = Session("Fecha").ToString()
            TextBox8.Text = Session("TotalCitas").ToString()
            TextBox11.Text = Session("CitasCanceladas").ToString()
            TextBox9.Text = Session("Citasreservadas").ToString()
            TextBox2.Text = Session("CitasEfectivas").ToString()
            TextBox4.Text = Session("CitasPerdidas").ToString()



        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try
    End Sub

    'Protected Sub Button16_Click(sender As Object, e As EventArgs) Handles Button16.Click
    '    Registrar1()
    'End Sub
End Class