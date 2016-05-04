<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Fullstory.aspx.vb" Inherits="Fullstory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">


    <asp:Panel ID="pnl_display" runat="server"  ><!--------Start Panel---------------->
   
    <asp:TextBox ID="txtboxID" runat="server" Visible="False" ></asp:TextBox><!--------Invisisble Text Box---------------->

     <br />
<br />
<br />
<asp:Label ID="lblfullstoryheadlines" runat="server" Font-Bold="True" 
    Font-Size="20pt" ForeColor="Maroon" Text="Label"></asp:Label><!--------Label Headlines---------------->
<br />
        <asp:ImageButton ID="imgnews" runat="server" Height="300px" Width="70%" />
<br />
<asp:Label ID="lblfullreporter" runat="server" Font-Size="15pt" 
    ForeColor="#333300" Text="Label"></asp:Label>
/<asp:Label ID="lblfullplace" runat="server" Text="Label" Font-Size="15pt" 
    ForeColor="#333300"></asp:Label>



        ,
        <asp:Label ID="lblfulldate" runat="server" Font-Size="15pt" ForeColor="#333300" 
            Text="Label"></asp:Label>
        &nbsp;-&nbsp;
<asp:Label ID="lblfullnews" runat="server" Font-Size="15pt" Text="Label"></asp:Label><!--------Label Full News---------------->

&nbsp;

 </asp:Panel><!--------End Panel---------------->


</asp:Content>

