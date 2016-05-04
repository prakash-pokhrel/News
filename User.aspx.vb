Imports System.Data
Imports System.Data.OleDb
Imports System.Web.UI.Page
Imports System.Web.UI.TemplateControl


Partial Public Class User
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=microsoft.jet.oledb.4.0; Data Source=" & Server.MapPath("News.mdb"))
    Dim cmd, cmd1 As OleDbCommand
    Dim dr As OleDbDataReader

    Protected Sub btn_userreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_userreset.Click
        txtusername.Text = ""
        txtuserpass.Text = ""

    End Sub

    Protected Sub btn_usersubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_usersubmit.Click
        Try


            cn.Open()
            cmd = New OleDbCommand("Select * from NewUser where NewUser='" + txtusername.Text + "'", cn)

            dr = cmd.ExecuteReader


            If (dr.Read) Then
                If (dr(7).ToString = txtuserpass.Text) Then
                    lblenterusername.Text = "Welcome " + txtusername.Text

                    panel_user.Visible = False
                    MultiView1.ActiveViewIndex = 1
                    txtrprtrname.Text = txtusername.Text
                    lblrprtr.Text = txtusername.Text
                    lblrprtr.ForeColor = Drawing.Color.BlueViolet
                Else
                    lblenterusername.Text = "Password Incorrect"
                End If

            Else
                lblenterusername.Text = "User Doesn't Exist"
            End If

        Catch ex As Exception
            Response.Write("ex.message")
        Finally
            cn.Close()


        End Try


    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            MultiView1.ActiveViewIndex = 0
        End If
    End Sub


    Protected Sub btn_newssubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_newssubmit.Click
        If Page.IsValid Then


            Try
                


                If (FileUpload1.HasFile) Then 'if there is image to upload

                    Dim str As String = FileUpload1.FileName

                    FileUpload1.PostedFile.SaveAs(Server.MapPath("") + "\uploads\" + str)
                    Dim path As String = "uploads/" + str.ToString()





                    Dim cmd As New OleDbCommand("Insert into News(newsdate,nplace,nfield,newscontent,nfile,nreporter,nheadlines)values (@c1,@c2,@c3,@c4,@c5,@c6,@c7)", cn)
                    cmd.Parameters.AddWithValue("c1", txt_date.Text)
                    cmd.Parameters.AddWithValue("c2", txt_plc.Text)
                    cmd.Parameters.AddWithValue("c3", DropDownList1.Text)
                    cmd.Parameters.AddWithValue("c4", txt_news.Text)
                    cmd.Parameters.AddWithValue("c5", path)
                    cmd.Parameters.AddWithValue("c6", txtrprtrname.Text)
                    cmd.Parameters.AddWithValue("c7", txt_headlines.Text)



                    cn.Open()
                    cmd.ExecuteNonQuery()
                    lblenterusername.Text = "News Successfully Uploaded !!"
                    MultiView1.ActiveViewIndex = 2
                    txt_date.Text = ""
                    txt_plc.Text = ""
                    DropDownList1.Text = ""
                    txt_news.Text = ""
                    txtrprtrname.Text = ""
                    txt_headlines.Text = ""


                Else  'if there is no image to upload
                    Dim cmd As New OleDbCommand("Insert into News(newsdate,nplace,nfield,newscontent,nreporter,nheadlines)values (@c1,@c2,@c3,@c4,@c6,@c7)", cn)
                    cmd.Parameters.AddWithValue("c1", txt_date.Text)
                    cmd.Parameters.AddWithValue("c2", txt_plc.Text)
                    cmd.Parameters.AddWithValue("c3", DropDownList1.Text)
                    cmd.Parameters.AddWithValue("c4", txt_news.Text)
                    cmd.Parameters.AddWithValue("c6", txtrprtrname.Text)
                    cmd.Parameters.AddWithValue("c7", txt_headlines.Text)

                    cn.Open()
                    cmd.ExecuteNonQuery()
                    lblenterusername.Text = "News Successfully Uploaded !!!"
                    lblenterusername.ForeColor = Drawing.Color.Green
                    MultiView1.ActiveViewIndex = 2
                    txt_date.Text = ""
                    txt_plc.Text = ""
                    DropDownList1.Text = ""
                    txt_news.Text = ""
                    txtrprtrname.Text = ""
                    txt_headlines.Text = ""
                End If

            Catch ex As Exception

                lblenterusername.Text = ex.Message
            Finally
                cn.Close()
            End Try

        Else
            lblenterusername.Text = "Page Validation Failed"
            lblenterusername.ForeColor = Drawing.Color.Green

        End If

    End Sub

    Protected Sub btn_newsreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_newsreset.Click
        txt_date.Text = ""
        txt_plc.Text = ""
        DropDownList1.Text = ""
        txt_news.Text = ""
        txtrprtrname.Text = ""
    End Sub

    Protected Sub txtrprtrname_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtrprtrname.Init

    End Sub


    Protected Sub btn_gotoHome_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_gotoHome.Click
        Response.Redirect("News.aspx")
    End Sub

    Protected Sub btn_submitanother_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_submitanother.Click

        MultiView1.ActiveViewIndex = 1
        lblenterusername.Text = "Enter News Content"
    End Sub

    Protected Sub Calendar1_SelectionChanged(sender As Object, e As System.EventArgs) Handles Calendar1.SelectionChanged
        txt_date.Text = Calendar1.SelectedDate.ToShortDateString()
    End Sub

End Class
