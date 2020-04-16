<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="authentification.aspx.cs" Inherits="Exercice2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #login
        {
            text-align:center;
            font-size:30px;
        }
        .auto-style2 {
            width: 223px;
        }
    .auto-style3 {
        margin-bottom: 0px;
    }
    </style>
    <div id="login">
       Authentifier vous 
    </div>
    <div>
        <table>
            <tr>
                <td>Nom utilisateur :</td><td><asp:TextBox ID="tlogin" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Mot de pass :</td><td><asp:TextBox ID="tpass" runat="server"></asp:TextBox></td>
            </tr>
        </table><br />
        <asp:Button runat="server" ID="blogin" OnClick="blogin_Click" Text="CONNEXION" CssClass="auto-style3"/>
    </div>
</asp:Content>

