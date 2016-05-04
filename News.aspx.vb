Imports System.Data
Imports System.Data.OleDb

Partial Class News
    Inherits System.Web.UI.Page

    Protected Sub Timer1_Tick(ByVal sender As Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Dim i As New Integer
        Dim ran As New Random
        i = ran.Next(1, 8)
        ImageButton1.ImageUrl = "~/ImageSlideShow/" + i.ToString() + ".jpg" 'image supplied from imageslide show folder
        Label1.Text = i
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        ImageButton1.ImageUrl = "~/ImageSlideShow/1.jpg"
        Label1.Text = 1

    End Sub
End Class
