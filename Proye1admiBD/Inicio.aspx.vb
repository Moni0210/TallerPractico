Public Class Formulario_web1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        Response.Redirect("Estadisticas.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        If (Session("IdUsuario") = 1) Then
            Response.Redirect("ReservarCita.aspx")
        Else
            Response.Redirect("IniciarSesion.aspx")
        End If
    End Sub
End Class