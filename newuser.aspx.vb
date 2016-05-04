Imports System.Data.OleDb

Partial Class NewUsers
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=microsoft.jet.oledb.4.0; Data Source=" & Server.MapPath("News.mdb"))
    Dim cmd As OleDbCommand
    Dim dr As OleDbDataReader

    Protected Sub btn_newuserreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_newuserreset.Click
        txt_newusername.Text = ""
        txt_newuserage.Text = ""
        txt_newuseraddr.Text = ""
        txt_newuseremail.Text = ""
        txt_newusercountry.Text = ""
        txt_newuserphn.Text = ""
        txtnewuser.Text = ""
        txtnewpass.Text = ""
        txtpassagn.Text = ""
    End Sub

    Protected Sub btn_newusersubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_newusersubmit.Click

        Try

            Dim cmd As New OleDbCommand("Insert into NewUser(UName,UAddress,UAge,UEmail,UCountry,Newuser,Newpass)values (@b1,@b2,@b3,@b4,@b6,@b7,@b8)", cn)
            cmd.Parameters.AddWithValue("b1", lbl_name.Text)
            cmd.Parameters.AddWithValue("b2", lbl_addres.Text)
            cmd.Parameters.AddWithValue("b3", lbl_age.Text)
            cmd.Parameters.AddWithValue("b4", lbl_email.Text)
            cmd.Parameters.AddWithValue("b5", lbl_phn.Text)
            cmd.Parameters.AddWithValue("b6", lbl_country.Text)
            cmd.Parameters.AddWithValue("b7", lbl_newuser.Text)
            cmd.Parameters.AddWithValue("b8", newpass.Text)
            cn.Open()
            cmd.ExecuteNonQuery()
            lbl1.Text = "User Registration Successful"
            MultiViewFillData.ActiveViewIndex = 2
            txt_newusername.Text = ""
            txt_newuseraddr.Text = ""
            txt_newuserage.Text = ""
            txt_newuseremail.Text = ""
            txt_newuserphn.Text = ""
            txt_newusercountry.Text = ""
            txtnewuser.Text = ""
            txtnewpass.Text = ""
            cmd.Dispose()
        Catch ex As Exception

            lbl1.Text = ex.Message
        Finally
            cn.Close()
        End Try
    End Sub

    Protected Sub txtpassagn_TextChanged(sender As Object, e As System.EventArgs) Handles txtpassagn.TextChanged
        If txtpassagn.Text <> txtnewpass.Text Then
            RequiredFieldValidatorPwdAgn.Text = "Password Doesn't Match"
        End If
    End Sub

   

    Protected Sub btn_View_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_View.Click
        Try
            cn.Open()
            Dim cmd As New OleDbCommand("Select * from NewUser where NewUser='" + txtnewuser.Text + "'", cn)
            dr = cmd.ExecuteReader


            If (dr.Read) Then
                If (dr(7).ToString = txtnewuser.Text) Then
                    lbl1.Text = "User Already Exist !!! Choose Another Username"
                End If


            Else
                MultiViewFillData.ActiveViewIndex = 1
                lbl1.ForeColor = Drawing.Color.Red
                lbl1.Text = "IF the data is correct click confirm otherwise click Edit for editing"
                lbl_name.Text = txt_newusername.Text
                lbl_age.Text = txt_newuserage.Text
                lbl_email.Text = txt_newuseremail.Text
                lbl_country.Text = txt_newusercountry.Text
                lbl_addres.Text = txt_newuseraddr.Text
                lbl_phn.Text = txt_newuserphn.Text
                lbl_newuser.Text = txtnewuser.Text
                newpass.Text = txtnewpass.Text
            End If
            
        Catch ex As Exception
            lbl1.Text = ex.Message
        Finally
            cn.Close()
        End Try





    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            MultiViewFillData.ActiveViewIndex = 0
        End If
    End Sub

    Protected Sub btn_goto_Click(sender As Object, e As System.EventArgs) Handles btn_goto.Click
        Response.Redirect("User.aspx")
    End Sub

    Protected Sub btn_edit_Click(sender As Object, e As System.EventArgs) Handles btn_edit.Click
        MultiViewFillData.ActiveViewIndex = 0
    End Sub
End Class


