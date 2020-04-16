<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Exercice2.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #inscription
        {
            font-size:40px;
            text-align:center;
        }
        .auto-style1 {
            width: 353px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 353px;
            height: 26px;
        }
    </style>
    <div id="inscription">
        Page d'inscription
    </div>
    <div>
        <table>
            <tr>
                <td>Nom :</td><td><asp:TextBox runat="server" ID="Nom" Width="204px"></asp:TextBox></td><td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Nom" ErrorMessage="Oubligatoir " ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td>Prenom :</td><td><asp:TextBox runat="server" ID="tPreno" Width="204px"></asp:TextBox></td><td class="auto-style1">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tPreno" ErrorMessage="Oubligatoir " ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td>Adresse :</td><td><asp:TextBox runat="server" ID="tAdresse" Width="204px"></asp:TextBox></td><td class="auto-style1">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tAdresse" ErrorMessage="Oubligatoir " ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td>Ville :</td><td><asp:DropDownList runat="server" ID="dville" Height="21px" Width="212px"></asp:DropDownList></td><td class="auto-style1">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dville" ErrorMessage="Oubligatoir " ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td>Tel :</td><td><asp:TextBox runat="server" ID="tel" Width="204px"></asp:TextBox></td><td class="auto-style1">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tel" ErrorMessage="Oubligatoir " ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tel" ErrorMessage="tel non valid" ForeColor="Red" ValidationExpression="^0(\d{9})$"></asp:RegularExpressionValidator>
                 </td>
            </tr>
             <tr>
                <td class="auto-style2">Login :</td><td class="auto-style2"><asp:TextBox runat="server" ID="Login" Width="204px"></asp:TextBox></td><td class="auto-style3">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Login" ErrorMessage="Oubligatoir " ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Login" ErrorMessage="doit etre au format[aaaa@email.com]" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 </td>
            </tr>
             <tr>
                <td>Mot de pass:</td><td><asp:TextBox runat="server" ID="tpass" Width="204px"></asp:TextBox></td><td class="auto-style1">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tpass" ErrorMessage="Oubligatoir " ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>

            </tr>
            <tr>
                <td>Comfirmer le mot de pass :</td><td><asp:TextBox runat="server" ID="tpass_comfirmation" Width="204px"></asp:TextBox></td><td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tpass" ControlToValidate="tpass_comfirmation" ErrorMessage="encorrect" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
             
        </table><br />
        <asp:Button ID="binscription" runat="server" OnClick="binscription_Click" Text="Inscription"/>
    </div>
</asp:Content>

