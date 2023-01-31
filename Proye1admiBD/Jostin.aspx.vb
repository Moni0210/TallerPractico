Public Class Jostin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_color_Click(sender As Object, e As EventArgs) Handles btn_color.Click
        lbl_nombre.ForeColor = System.Drawing.Color.Red
    End Sub
End Class