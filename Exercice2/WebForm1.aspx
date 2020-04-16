<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Exercice2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="categiries" runat="server" OnSelectedIndexChanged="categiries_SelectedIndexChanged"></asp:DropDownList><br /><br />

   <asp:DataGrid runat="server" ID="articles" Width="51%" CellPadding="4" ForeColor="#333333" GridLines="None">
       <AlternatingItemStyle BackColor="White" />
       <EditItemStyle BackColor="#2461BF" />
       <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
       <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
       <ItemStyle BackColor="#EFF3FB" />
       <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
       <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />

   </asp:DataGrid>
</asp:Content>
