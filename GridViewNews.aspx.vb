
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub linkbtn_User_Click(sender As Object, e As System.EventArgs) Handles linkbtn_User.Click
        Server.Transfer("GridViewUser.aspx")
    End Sub

    Protected Sub linkbtn_feedbackgrid_Click(sender As Object, e As System.EventArgs) Handles linkbtn_feedbackgrid.Click
        Server.Transfer("GridViewFeedback.aspx")
    End Sub
End Class
