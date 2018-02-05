﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="authorUI.aspx.cs" Inherits="NextGen_Application_Bookauthor_ForntEnd.authorUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div class="jumbotron">    
    <asp:Image ID="Image1" runat="server" Height="469px" ImageUrl="~/ImageUrl/1024px-Famous_Germans_collage_2.jpg" Style="margin-left: 3px" Width="1084px" />
   </div>
    <marquee style="color: aqua"><h4>"Here You Update,Insert and delete AuthorsRecord"</h4></marquee>
    <asp:HyperLink NavigateUrl="~/AddAuthor" Text="ADD NEW AUTHOR" runat="server" BackColor="#FFFF66" Font-Bold="True" ForeColor="Black" />
    
   
    <asp:ValidationSummary ShowModelStateErrors="true" runat="server" />
    <asp:GridView ID="GridView1" runat="server"
        ItemType="NextGen_Application_BookAuthor.Author" DataKeyNames="Aid"
        SelectMethod="GetAuthor"
        UpdateMethod="UpdateAuthor"
        DeleteMethod="DeleteAuthor"
        AutoGenerateDeleteButton="True"
        AutoGenerateEditButton="True"
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1174px"
        AllowPaging="True"
        OnCallingDataMethods="Author_CallingDataMethods">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:DynamicField DataField="Aid" ReadOnly="true" />
            <asp:DynamicField DataField="FistName" />
            <asp:DynamicField DataField="LastName" />
            <asp:DynamicField DataField="Url" />

        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />






    </asp:GridView>
</asp:Content>