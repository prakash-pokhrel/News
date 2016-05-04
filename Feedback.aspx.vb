Imports System.Data.OleDb

Partial Class Feedback
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=microsoft.jet.oledb.4.0; Data Source=" & Server.MapPath("News.mdb"))    'connect to the database
    Protected Sub btn_submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_submit.Click
        Try
            Dim cmd As New OleDbCommand("Insert into Feedback(Name,Address,Email,Feedback)values (@a1,@a2,@a3,@a4)", cn) 'insert 
            cmd.Parameters.AddWithValue("a1", txt_name.Text)
            cmd.Parameters.AddWithValue("a2", txt_addr.Text)
            cmd.Parameters.AddWithValue("a3", txt_email.Text)
            cmd.Parameters.AddWithValue("a4", txt_feedback.Text)

            cn.Open() 'open conection

            cmd.ExecuteNonQuery()

            lbl_display.Text = "Thank You For Your Feedback"
            txt_name.Text = ""
            txt_addr.Text = ""
            txt_email.Text = ""
            txt_feedback.Text = ""
        Catch ex As Exception

            lbl_display.Text = ex.Message
        Finally
            cn.Close() 'close connection
        End Try

    End Sub


End Class
