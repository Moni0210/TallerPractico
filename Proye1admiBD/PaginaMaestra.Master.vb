Public Class PaginaMaestra
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'aparezcael nombre del Usuario 
        If (Session("Identificacion") <> vbNullString) Then
            lblusuario.Text = Session("Nombre").ToString()
            Button5.Visible = False
            Button4.Visible = False
            Button7.Visible = True

            If (Session("IdUsuario") = 1) Then
                Button8.Visible = True
                Button10.Visible = False
                Button9.Visible = False
                Button11.Visible = False
                Button12.Visible = True
                Button13.Visible = True
                Button14.Visible = True
                Button15.Visible = False
                Button1.Visible = False
                Button7.Visible = True
                Button16.Visible = False

            ElseIf (Session("IdUsuario") = 2) Then
                Button8.Visible = False
                Button10.Visible = True
                Button9.Visible = True
                Button11.Visible = True
                Button12.Visible = False
                Button13.Visible = False
                Button14.Visible = False
                Button15.Visible = True
                Button1.Visible = True
                Button7.Visible = True
                Button16.Visible = True
            ElseIf (Session("IdUsuario") = 3) Then
                Button8.Visible = False
                Button10.Visible = True
                Button9.Visible = True
                Button11.Visible = True
                Button12.Visible = False
                Button13.Visible = False
                Button14.Visible = False
                Button15.Visible = True
                Button1.Visible = True
                Button7.Visible = True
                Button16.Visible = True
            End If

        Else

            lblusuario.Text = String.Empty
            Button5.Visible = True
            Button4.Visible = True
            Button8.Visible = False
            Button10.Visible = False
            Button9.Visible = False
            Button7.Visible = False
            Button11.Visible = False
            Button12.Visible = False
            Button13.Visible = False
            Button14.Visible = False
            Button1.Visible = False
            Button16.Visible = False
            Button7.Visible = False
            Button15.Visible = False
        End If
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Response.Redirect("IniciarSesion.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("Registro.aspx")
    End Sub



    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Session("Identificacion") = vbNullString
        Session("IdUsuario") = vbNullString
        Response.Redirect("Inicio.aspx")
        HttpContext.Current.Session.Abandon()


    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        Response.Redirect("Modificar_EliminarUsuario.aspx")
    End Sub

    Protected Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click

        Response.Redirect("MantenimientoEmpleados.aspx")
    End Sub

    Protected Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        Response.Redirect("Mantenimiento_Usuario.aspx")
    End Sub

    Protected Sub Button11_Click(sender As Object, e As EventArgs) Handles Button11.Click
        Response.Redirect("RegistrarHorarios.aspx")
    End Sub

    Protected Sub Button12_Click(sender As Object, e As EventArgs) Handles Button12.Click
        Response.Redirect("ReservarCita.aspx")
    End Sub

    Protected Sub Button13_Click(sender As Object, e As EventArgs) Handles Button13.Click
        'Response.Redirect("ReservarCita.aspx")
        Response.Redirect("CancelarCita.aspx")
    End Sub

    Protected Sub Button14_Click(sender As Object, e As EventArgs) Handles Button14.Click
        Response.Redirect("ListadeCitas.aspx")
    End Sub

    Protected Sub Button15_Click(sender As Object, e As EventArgs) Handles Button15.Click
        Response.Redirect("ListaPorFechas.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Estadisticas.aspx")
    End Sub

    Protected Sub Button16_Click(sender As Object, e As EventArgs) Handles Button16.Click
        Response.Redirect("Informes.aspx")
    End Sub
End Class