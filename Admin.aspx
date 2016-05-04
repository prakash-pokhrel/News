<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false"
    CodeFile="Admin.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <br />
    <asp:Label ID="lbl_admin" runat="server" Text="Enter Admin Name and Admin password. These are case sensitive"
        Font-Bold="True" Font-Names="Arial" ForeColor="#993333"></asp:Label>
    <br />
    <br />
     <!------------------------------------------------------------------------------Enter username and password panel------------------------------------------------------------------------------------------------->
    <asp:Panel ID="PanelForm" runat="server" Style="margin-top: 0px" Height="176px">
        <asp:Button ID="btn_adminname" runat="server" Height="25px" Style="margin-left: 0px"
            Text="User Name" Width="180px" />
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_adminname" runat="server" Height="26px" Width="180px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btn_adminpass" runat="server" Height="25px" Style="margin-left: 0px"
            Text="Password" Width="180px" />
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_adminpass" runat="server" Height="26px" Width="180px" 
            TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btn_adminsubmit" runat="server" Height="25px" Style="margin-left: 0px"
            Text="Submit" Width="180px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_adminreset" runat="server" Height="25px" Style="margin-left: 0px"
            Text="Reset" Width="180px" />
        <br />
    </asp:Panel>     <!--------End Panel---------------->
    <br />
    <br />
     <!------------------------------------------------------------------------------Choose Table panel------------------------------------------------------------------------------------------------->
    <asp:Panel ID="PanelEntertable" runat="server" Visible="False">
        <asp:LinkButton ID="linkbtn_feedbackgrid" runat="server" Font-Bold="True" ForeColor="Maroon"
            PostBackUrl="~/GridViewfeedback.aspx" BackColor="Gray">Feedback Table</asp:LinkButton>
        &nbsp;
        <asp:LinkButton ID="linkbtn_Newsgrid" runat="server" Font-Bold="True" ForeColor="Maroon"
            PostBackUrl="~/GridViewNews.aspx" BackColor="Gray">News Table</asp:LinkButton>
        &nbsp;&nbsp;
        <asp:LinkButton ID="linkbtn_User" runat="server" Font-Bold="True" ForeColor="Maroon"
            PostBackUrl="~/GridViewUser.aspx" BackColor="Gray">User Table</asp:LinkButton>
    </asp:Panel><!--------End of Choose Table Panel---------------->
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
