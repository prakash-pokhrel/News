Imports System.Data
Imports System.Data.OleDb

Partial Class Default2
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=microsoft.jet.oledb.4.0; Data Source=" & Server.MapPath("News.mdb"))
    Dim cmd As OleDbCommand
    Dim dr As OleDbDataReader
    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        Try
            cn.Open()
            cmd = New OleDbCommand("Select * from NewUser where UEmail='" + txtfgtpwdemail.Text + "'", cn)
            dr = cmd.ExecuteReader
            If (dr.Read) Then
                If (dr("Newuser").ToString = txtfgtpwdusername.Text) Then
                    lblpwd.Visible = True
                    lblnarrate.Visible = True
                    lblnarrate.Text = "Your Password Is:"
                    lblpwd.Text = dr("Newpass")
                Else
                    lblnarrate.Text = "Email Incorrect"
                End If

            Else
                'If email and username doesn't match
                lblnarrate.Visible = True
                lblnarrate.Text = "User Doesn't Exist"
            End If

        Catch ex As Exception
            lblnarrate.Visible = True
            lblnarrate.Text = "Value Seems Incorrect!!! Try Again."
        Finally
            cn.Close()
        End Try
    End Sub
End Class
