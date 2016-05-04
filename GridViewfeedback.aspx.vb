
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub linkbtn_Newsgrid_Click(sender As Object, e As System.EventArgs) Handles linkbtn_Newsgrid.Click
        Server.Transfer("GridViewNews.aspx")
    End Sub

    Protected Sub linkbtn_User_Click(sender As Object, e As System.EventArgs) Handles linkbtn_User.Click
        Server.Transfer("GridViewUser.aspx")
    End Sub
End Class
