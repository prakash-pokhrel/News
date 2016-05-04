
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btn_adminsubmit_Click(sender As Object, e As System.EventArgs) Handles btn_adminsubmit.Click


        If txt_adminname.Text = "admin" Then
            If txt_adminpass.Text = "admin" Then
                lbl_admin.Text = "WELCOME ADMIN, YOU CAN CHOOSE FEEDBACK, USER OR NEWS TABLE TO EDIT AND READ THE DATA"
                PanelForm.Visible = False
                PanelEntertable.Visible = True
            End If

        End If

    End Sub

End Class
