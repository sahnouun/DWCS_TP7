<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gestion_client.aspx.cs" Inherits="exercice1.Gestion_client" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <style>

        .ulbuttons{
            position:center;
        }
        .ulbuttons li{
            text-decoration:none;
            position:relative;
            list-style:none;
            margin-bottom:15px;
        }
        #table_M
        {
            width:80%;
     margin:auto;
          
        }
        table
        {
            width:100%;
        }
        .t
        {
            text-align:right;
        }
        #buttons
        {
      
           width:50%;
           margin:auto;
          
        }
       #badd,#bupdate,#bdelete,#bsearch
       {
           width:100px;
           border:none;
           margin:25px;
           height:30px;
           border-radius:25px;
       }
       
         #all_Clients
         {
             width:100%;
         }
         #Nom,#tAdresse,#dville,#tel,#Login,#tpass,#tpass_comfirmation
         {
             width:100%;
         }


        .auto-style1 {
            text-align: right;
            width: 200px;
        }


    </style>
    <form id="form1" runat="server">
    <div>
        <div id="table_M">

        
        <table>
            <tr>
                <td>
                    <table>
                          <tr>
                <td class="auto-style1">Num Client :</td><td><asp:TextBox runat="server" ID="Num"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Nom :</td><td><asp:TextBox runat="server" ID="Nom" Width="204px"></asp:TextBox></td>
            </tr>
           
             <tr>
                <td class="auto-style1">Adresse :</td><td><asp:TextBox runat="server" ID="tAdresse" Width="204px"></asp:TextBox></td>
            </tr>
             <tr>
                <td class="auto-style1">Ville :</td><td><asp:DropDownList runat="server" ID="dville" Height="21px" Width="209px"></asp:DropDownList></td>
            </tr>
             <tr>
                <td class="auto-style1">Tel :</td><td><asp:TextBox runat="server" ID="tel" Width="204px"></asp:TextBox></td>
            </tr>
             <tr>
                <td class="auto-style1">Login :</td><td class="auto-style2"><asp:TextBox runat="server" ID="Login" Width="204px"></asp:TextBox></td>
            </tr>
             <tr>
                <td class="auto-style1">Mot de passe:</td><td><asp:TextBox runat="server" ID="tpass" Width="204px"></asp:TextBox></td>

            </tr>
            <tr >
                <td class="auto-style1">Comfirmer le mot de passe :</td><td><asp:TextBox runat="server" ID="tpass_comfirmation" Width="204px"/></td>
            </tr>
                    </table>
                </td>
                <td >
                       <%--   les buttons des operations--%>
                    <ul class="ulbuttons" >
                        <center>
                        <li> <asp:Button Text="Ajouter" runat="server" ID="badd" OnClick="badd_Click" /></li>
                        <li> <asp:Button Text="Modifier" runat="server" ID="bupdate" OnClick="bupdate_Click" /></li>
                        <li> <asp:Button Text="Supprimer" runat="server" ID="bdelete" OnClick="bdelete_Click" /></li>
                        <li> <asp:Button Text="Rechercher" runat="server" ID="bsearch" OnClick="bsearch_Click" /></li>
                        </center>
                    </ul>
                            

                </td>
                </tr>
          
             
        </table>
            </div><br />
  

        <%--gridView--%>
        <div>
            <asp:DataGrid runat="server" ID="all_Clients" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingItemStyle BackColor="White" />
                <EditItemStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#EFF3FB" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:DataGrid>
        </div>
    
    </div>
    </form>
</body></html>
