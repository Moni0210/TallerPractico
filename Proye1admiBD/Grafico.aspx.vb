Imports System.Data.SqlClient
Imports System.Web.UI.DataVisualization.Charting
Imports Negocios

Public Class Formulario_web113
    Inherits System.Web.UI.Page
    Dim Obj_Horario As New Hora
    Dim String_Conexion = "Data Source=LAPTOP-59A9TSFS;Initial Catalog=AdmiProyecto1;Integrated Security=True"
    Public conexion As SqlConnection
    Public cmd As SqlCommand
    Public rd As SqlDataReader
    Public da As SqlDataAdapter
    Public dt As DataTable
    Public Reader As SqlDataReader


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If (Session("IdUsuario") = 2) Then
                Try
                    Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Empleados; Password= 1234;"
                    conexion = New SqlConnection(String_Conexion)
                    cmd = New SqlCommand("CantidaddeCitas", conexion)
                    cmd.CommandType = System.Data.CommandType.StoredProcedure
                    cmd.Parameters.Add("@FechaInicial", SqlDbType.Date).Value = tbFechaI.Text
                    cmd.Parameters.Add("@FechaFinal", SqlDbType.Date).Value = tbFechaF.Text
                    da = New SqlDataAdapter(cmd)
                    dt = New DataTable()
                    da.Fill(dt)



                    conexion.Open()
                    cmd.ExecuteNonQuery()
                Catch ex As Exception
                    lblError.Text = ex.Message
                End Try


            End If

            If (Session("IdUsuario") = 3) Then
                Try
                    Dim String_Conexion = "Data Source = LAPTOP-59A9TSFS\INSTANCIA3; Initial Catalog=AdmiProyecto1; User ID=Gerente; Password= 1234;"
                    conexion = New SqlConnection(String_Conexion)
                    cmd = New SqlCommand("CantidaddeCitas", conexion)
                    cmd.CommandType = System.Data.CommandType.StoredProcedure
                    cmd.Parameters.Add("@FechaInicial", SqlDbType.Date).Value = tbFechaI.Text
                    cmd.Parameters.Add("@FechaFinal", SqlDbType.Date).Value = tbFechaF.Text
                    da = New SqlDataAdapter(cmd)
                    dt = New DataTable()
                    da.Fill(dt)
                    conexion.Open()
                    cmd.ExecuteNonQuery()

                Catch ex As Exception
                    lblError.Text = ex.Message
                End Try

            End If

            'obj_Citas.CitasID1 = tbId.Text
            'obj_Citas.UsuarioId1 = tbIdentificacion.Text
            'obj_Citas.IdHorario1 = TbIdHorario.Text
            'obj_Citas.MedicoID1 = TbidDoctor.Text
            'obj_Citas.Estado1 = DdLdisponibilidad.Text
            'obj_Citas.Motivo1 = TextBox1.Text
            'obj_Citas.ModificaarCita()
            'obj_Citas.CancelarCita()

        Catch ex As Exception
            lblError.Text = ex.Message
        End Try
        Datos1()
    End Sub
    Sub Datos1()
        Try

            Chart1.DataSource = dt
            CHART1.Series("Series1").XValueMember = "Fecha"
            CHART1.Series("Series1").YValueMembers = "Cantidad"
            '        DropDownList1.DataTextField = "NombreDoctor"
            '        DropDownList1.DataValueField = "identificacion"
            CHART1.DataBind()

            conexion.Close()
        Catch ex As Exception
            lblError.Text = "Error al cargar los datos:  " + ex.Message
        End Try
    End Sub


End Class