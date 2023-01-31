Public Class Jostin_aguero_castro
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_cambiarColor_Click(sender As Object, e As EventArgs) Handles btn_cambiarColor.Click
        lbl_Jostin.ForeColor = System.Drawing.Color.Aqua
    End Sub
End Class