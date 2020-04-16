<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Afficher_info_per.aspx.cs" Inherits="Exercice2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="email" runat="server"></asp:Label><br />
    <span id="deco">
        <asp:Button ID="deconnexion" runat="server" Text="DECONNEXION" OnClick="deconnexion_Click"  />
    </span>
    <asp:Label ID="pass" runat="server"></asp:Label><br />
    <a href="Commendes.aspx">Voire mes commendes</a>

    <br />
    <style>
        #deco
        {
            float:right;
        }
    </style>

</asp:Content>
