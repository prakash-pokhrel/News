Imports System.Data
Imports System.Data.OleDb
Imports System.Data.OleDb.OleDbDataReader
Imports System.Exception
Imports System.Web.HttpRequest




Partial Class Fullstory
    Inherits System.Web.UI.Page
    Dim myConnection As New OleDbConnection("Provider=microsoft.jet.oledb.4.0; Data Source=" & Server.MapPath("News.mdb"))
    Dim cmd As OleDbCommand
    Dim drr As OleDbDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        txtboxID.Text = Request.QueryString("ID") 'Query string supplied from master content of the page

        Try
            myConnection.Open()
            Dim myCommand As String
            myCommand = "Select * from News where ID = " + (txtboxID.Text)

            cmd = New OleDbCommand(myCommand, myConnection)

            drr = cmd.ExecuteReader
           
            If drr.Read Then
                Dim x As String
                x = drr("nfile").ToString

                If String.IsNullOrWhiteSpace(x) = False Then 'if there is image/picture

                    imgnews.Enabled = True
                    imgnews.Visible = True
                    imgnews.ImageUrl = drr("nfile")
                    lblfullstoryheadlines.Text = drr("nheadlines")
                    lblfullplace.Text = drr("nPlace")
                    lblfullreporter.Text = drr("nreporter")
                    lblfullnews.Text = drr("newscontent")
                    lblfulldate.Text = drr("newsdate")
                Else
                    'if there is no image / picture
                    imgnews.Enabled = False
                    imgnews.Visible = False
                    lblfullstoryheadlines.Text = drr("nheadlines")
                    lblfullplace.Text = drr("nPlace")
                    lblfullreporter.Text = drr("nreporter")
                    lblfullnews.Text = drr("newscontent")
                    lblfulldate.Text = drr("newsdate")
                End If


              

            End If




        Catch ex As Exception
            lblfullplace.Text = "Oops!!! You got error somewhere"
            lblfullnews.Text = ex.Message


        Finally
            myConnection.Close()
        End Try
    End Sub
    

End Class
