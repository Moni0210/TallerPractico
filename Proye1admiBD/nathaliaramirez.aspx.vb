Public Class nathalia
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnCambiarColor_Click(sender As Object, e As EventArgs) Handles btnCambiarColor.Click
        lblNathalia.ForeColor = System.Drawing.Color.LightCyan

    End Sub
End Class