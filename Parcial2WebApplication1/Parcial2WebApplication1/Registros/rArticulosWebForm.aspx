<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rArticulosWebForm.aspx.cs" Inherits="Parcial2WebApplication1.Registros.rArticulosWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 77px
        }
        .auto-style2 {
            width: 308px;
        }
        .auto-style4 {
            height: 27px;
        }
        .auto-style5 {
            width: 364px;
            height: 27px;
        }
        .auto-style6 {
            height: 7px;
        }
        .auto-style7 {
            width: 364px;
            height: 7px;
        }
        .auto-style9 {
            width: 364px;
        }
        .auto-style10 {
            height: 11px;
        }
        .auto-style11 {
            width: 364px;
            height: 11px;
        }
        .auto-style12 {
            height: 24px;
        }
        .auto-style13 {
            width: 364px;
            height: 24px;
        }
        .auto-style14 {
            height: 8px;
        }
        .auto-style15 {
            width: 364px;
            height: 8px;
        }
        .auto-style16 {
            height: 10px;
        }
        .auto-style17 {
            width: 364px;
            height: 10px;
        }
        .auto-style25 {
            width: 452px;
            height: 153px;
        }
        .auto-style26 {
            height: 35px;
        }
        .auto-style27 {
            width: 364px;
            height: 35px;
        }
        .auto-style29 {
            height: 34px;
        }
        .auto-style30 {
            width: 452px;
        }
        .auto-style31 {
            width: 452px;
            height: 7px;
        }
        .auto-style32 {
            width: 452px;
            height: 27px;
        }
        .auto-style33 {
            width: 452px;
            height: 11px;
        }
        .auto-style34 {
            width: 452px;
            height: 24px;
        }
        .auto-style35 {
            width: 452px;
            height: 8px;
        }
        .auto-style36 {
            width: 452px;
            height: 10px;
        }
        .auto-style37 {
            width: 452px;
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <caption>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registro de Articulos</h3>
        </caption>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td class="auto-style9"></td>
            <td class="auto-style30"></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style7">
                <ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="/Registros/rArticulosWebForm.aspx">Registro</a></li>
  <li role="presentation"><a href="/Consultas/cArticuloswebForm.aspx">Consulta</a></li>

</ul>

            </td>
            <td class="auto-style31"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Articulo ID</td>
            <td class="auto-style32">
                <asp:TextBox ID="IdTextBox" runat="server" CssClass="col-xs-offset-0"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="IdTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="IdTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="Edit">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp; 
                
                

                
                <asp:Button ID="SearchButton" runat="server" CssClass="btn btn-primary" Text="Buscar" ValidationGroup="ID" OnClick="SearchButton_Click" />
                
                

                
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style33"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Descripcion</td>
            <td class="auto-style34">
                <asp:TextBox ID="DescTextBox" runat="server" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DescTextBox" ErrorMessage="Ingresar Descripcion" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DescTextBox" ErrorMessage="Ingresar Descripcion" ForeColor="Red" ValidationGroup="Edit">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12"></td>
            <td class="auto-style12">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="ID" />
            </td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style35"></td>
            <td class="auto-style14"></td>
            <td class="auto-style14">
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" ValidationGroup="Save" />
            </td>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Existencia</td>
            <td class="auto-style31">
                <asp:TextBox ID="existenciaTextBox" runat="server" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="existenciaTextBox" ErrorMessage="Ingresar la Existencia" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="existenciaTextBox" ErrorMessage="Ingresar la Existencia" ForeColor="Red" ValidationGroup="Edit">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style6">
                <asp:ValidationSummary ID="ValidationSummary3" runat="server" ForeColor="Red" ValidationGroup="Edit" />
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style16"></td>
            <td class="auto-style16"></td>
            <td class="auto-style17"></td>
            <td class="auto-style36"></td>
            <td class="auto-style16"></td>
            <td class="auto-style16"></td>
            <td class="auto-style16"></td>
            <td class="auto-style16"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Precio</td>
            <td class="auto-style34">
                <asp:TextBox ID="PrecioTextBox" runat="server" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PrecioTextBox" ErrorMessage="Ingresar el precio" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="PrecioTextBox" ErrorMessage="Ingresar el precio" ForeColor="Red" ValidationGroup="Edit">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
            <td class="auto-style27"></td>
            <td class="auto-style37"></td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="NewButton" CssClass="btn btn-warning" runat="server" Text="Nuevo" OnClick="NewButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="SaveButton" runat="server" CssClass="btn btn-success" Text="Guardar" ValidationGroup="Save" OnClick="SaveButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="EditButton" runat="server" CssClass="btn btn-info" Text="Modificar" OnClick="EditButton_Click" ValidationGroup="Edit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="DeleteButton" runat="server" CssClass="btn btn-danger" Text="Eliminar" ValidationGroup="ID" OnClick="DeleteButton_Click" />
            &nbsp;</td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
