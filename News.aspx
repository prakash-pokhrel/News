<%@ Page Title=""  Language="VB" MasterPageFile="~/Site.master"  CodeFile="News.aspx.vb" Inherits="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">


            <asp:ScriptManager ID="ScriptManager1" runat="server">

            </asp:ScriptManager> 

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="2000">
               </asp:Timer>
                <br/>
                <br/>
                <br/>
                <!--------Image Button for slide show---------------->
            <asp:ImageButton ID="ImageButton1" runat="server" Height="250px" 
                    Width="60%" /><br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </ContentTemplate>
            </asp:UpdatePanel>
         

                
               
			<h2 >WELCOME TO OUR WEBSITE</h2>
			<img src="ImageSlideshow/latest.jpg" style="float:left; margin:2px;" alt="News"/>
			<p>This Site "Online News" gives you a great offer to understand the world news
                details.... And also this site provides you the up-to-date information protico, that is you
                can easily view all the details/news on global wise. This site provides various options to users such as follows : If the user has a
                        news... For Example if i had a news that is today in Rajasthan some roads are broken
                        by means of heavy flood.... if i need to post or announce this news to all the peoples...here we provide place for that also by means of posting your news to directly into the database of our news.</p>
			
			
			
			
			
			<div id="item">
			<h2>CONTRIBUTE THE NEWS</h2>
			<p>Now You Can contribute the news and be the reporter for us. All you need to do is just simply write down the news and take some
			pictures and upload to our website. Its very easy, just create your username which is absolutely free.If you want to do so, <a href="User.aspx">Click here</a>
			</p></div>

            
	
</asp:Content>

