<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Weather.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">



    <asp:GridView ID="GridViewWeather" runat="server" AutoGenerateColumns="False" 
        DataSourceID="AccessDataSource1" AllowPaging="True" AllowSorting="True" 
        DataKeyNames="ID">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
            <asp:BoundField DataField="Maximum (Celsius)" HeaderText="Maximum (Celsius)" 
                SortExpression="Maximum (Celsius)" />
            <asp:BoundField DataField="Minimum (Celsius)" HeaderText="Minimum (Celsius)" 
                SortExpression="Minimum (Celsius)" />
            <asp:BoundField DataField="Rainfall (mm)" HeaderText="Rainfall (mm)" 
                SortExpression="Rainfall (mm)" />
            <asp:BoundField DataField="Sunshine" HeaderText="Sunshine" 
                SortExpression="Sunshine" />
            <asp:BoundField DataField="Sunset" HeaderText="Sunset" 
                SortExpression="Sunset" />
        </Columns>
       
    </asp:GridView>




   



    




   



    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/News.mdb" 
        SelectCommand="SELECT * FROM [Weather]">
    </asp:AccessDataSource>




   



</asp:Content>

