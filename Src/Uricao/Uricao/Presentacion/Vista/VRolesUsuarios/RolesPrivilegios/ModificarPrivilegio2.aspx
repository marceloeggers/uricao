﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ModificarPrivilegio2.aspx.cs" Inherits="Uricao.Presentacion.PaginasWeb.PRolesUsuarios.RolesPrivilegios.ModificarPrivilegio2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="superior">
    <h2>
       Roles y Privilegios
    </h2>
    <p>       
    </p>
    </div>
    <div style="height:30px; text-align:center; font-family:Verdana;font-size: 1.5em;">
        <asp:Label ID="falla" runat="server" Text="Label" CssClass="falla"></asp:Label>
        <asp:Label ID="Exito" runat="server" Text="Label" CssClass="Exito"></asp:Label>
    </div>
    <div  style="float:left;">
        <fieldset style="width:700px; height:380px; margin-left:4%;">
        <legend>Modificar Privilegio</legend>        
            <table style="margin:5% auto auto 26%;" border="0" cellspacing="0" cellpadding="0" align="center">
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label">ID del Privilegio:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="130px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label">Nombre del Privilegio:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td colspan="2"  style="text-align:center">
                <asp:Button ID="defaultButton" runat="server" Text="Aceptar" CssClass="button" onclick="defaultButton_Click" 
                        />
                </td>
            </tr>
            </table>          
        </fieldset>
    </div>
</asp:Content>
