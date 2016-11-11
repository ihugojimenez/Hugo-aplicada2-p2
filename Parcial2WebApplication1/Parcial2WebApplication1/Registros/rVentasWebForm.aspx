<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rVentasWebForm.aspx.cs" Inherits="Parcial2WebApplication1.rVentasWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 413px;
            height: 216px;
            margin-bottom: 20px;
            padding-left: 0;
        }
        .auto-style4 {
            width: 73px;
        }
        .auto-style5 {
            width: 543px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 413px;
            height: 26px;
            margin-bottom: 20px;
            padding-left: 0;
        }
        .auto-style9 {
            width: 543px;
            height: 26px;
        }
        .auto-style10 {
            width: 73px;
            height: 26px;
        }
        .auto-style11 {
            height: 13px;
        }
        .auto-style12 {
            width: 413px;
            height: 13px;
            margin-bottom: 20px;
            padding-left: 0;
        }
        .auto-style14 {
            width: 543px;
            height: 13px;
        }
        .auto-style15 {
            width: 73px;
            height: 13px;
        }
        .auto-style16 {
            height: 37px;
        }
        .auto-style17 {
            width: 413px;
            height: 37px;
            margin-bottom: 20px;
            padding-left: 0;
        }
        .auto-style19 {
            width: 543px;
            height: 37px;
        }
        .auto-style20 {
            width: 73px;
            height: 37px;
        }
        .auto-style21 {
            height: 8px;
        }
        .auto-style22 {
            width: 413px;
            height: 8px;
            margin-bottom: 20px;
            padding-left: 0;
        }
        .auto-style24 {
            width: 543px;
            height: 8px;
        }
        .auto-style25 {
            width: 73px;
            height: 8px;
        }
        .auto-style26 {
            height: 36px;
        }
        .auto-style27 {
            width: 413px;
            height: 36px;
            margin-bottom: 20px;
            padding-left: 0;
        }
        .auto-style29 {
            width: 543px;
            height: 36px;
        }
        .auto-style30 {
            width: 73px;
            height: 36px;
        }
        .auto-style31 {
            height: 15px;
        }
        .auto-style32 {
            width: 413px;
            height: 15px;
            margin-bottom: 20px;
            padding-left: 0;
        }
        .auto-style34 {
            width: 543px;
            height: 15px;
        }
        .auto-style35 {
            width: 73px;
            height: 15px;
        }
        .auto-style36 {
            height: 49px;
        }
        .auto-style37 {
            width: 413px;
            height: 49px;
            margin-bottom: 20px;
            padding-left: 0;
        }
        .auto-style39 {
            width: 543px;
            height: 49px;
        }
        .auto-style40 {
            width: 73px;
            height: 49px;
        }
        .auto-style42 {
            width: 413px;
            margin-bottom: 20px;
            padding-left: 0;
        }
        .auto-style44 {
            height: 18px;
        }
        .auto-style45 {
            width: 413px;
            height: 18px;
            margin-bottom: 20px;
            padding-left: 0;
        }
        .auto-style47 {
            width: 543px;
            height: 18px;
        }
        .auto-style48 {
            width: 73px;
            height: 18px;
        }
        .auto-style49 {
            height: 216px;
        }
        .auto-style50 {
            width: 543px;
            height: 216px;
        }
        .auto-style51 {
            width: 73px;
            height: 216px;
        }
        .auto-style52 {
            height: 42px;
        }
        .auto-style53 {
            width: 413px;
            height: 42px;
            margin-bottom: 20px;
            padding-left: 0;
        }
        .auto-style55 {
            width: 543px;
            height: 42px;
        }
        .auto-style56 {
            width: 73px;
            height: 42px;
        }
        .auto-style57 {
            width: 58px;
            height: 26px;
        }
        .auto-style58 {
            width: 58px;
            height: 13px;
        }
        .auto-style59 {
            width: 58px;
            height: 37px;
        }
        .auto-style60 {
            width: 58px;
            height: 8px;
        }
        .auto-style61 {
            width: 58px;
            height: 36px;
        }
        .auto-style62 {
            width: 58px;
            height: 15px;
        }
        .auto-style63 {
            width: 58px;
            height: 49px;
        }
        .auto-style64 {
            width: 58px;
        }
        .auto-style65 {
            width: 58px;
            height: 18px;
        }
        .auto-style66 {
            width: 58px;
            height: 42px;
        }
        .auto-style67 {
            width: 58px;
            height: 216px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td class="auto-style57"></td>
            <td class="auto-style9">
            <div class="page-header">
            <h1>Registro de Ventas</h1>
            </div>     
            </td>

            <td class="auto-style10"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style58"></td>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style17"></td>
            <td class="auto-style59">ID</td>
            <td class="auto-style19">
                <asp:TextBox ID="IdTextBox" runat="server" Width="141px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="IdTextBox" ErrorMessage="Favor ingrese el Id" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="IdTextBox" ErrorMessage="Favor ingrese el Id" ForeColor="Red" ValidationGroup="Edit">*</asp:RequiredFieldValidator>
            &nbsp;<asp:Button ID="SearchButton" runat="server" CssClass="btn btn-primary" Text="Buscar" ValidationGroup="ID" OnClick="SearchButton_Click"/>
                
                

                
&nbsp; &nbsp;&nbsp;&nbsp; Fecha
                <asp:TextBox ID="FechaTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FechaTextBox" ErrorMessage="Favor ingrese la Fecha" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FechaTextBox" ErrorMessage="Favor ingrese la Fecha" ForeColor="Red" ValidationGroup="Edit">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style20"></td>
            <td class="auto-style16">
                </td>
            <td class="auto-style16"></td>
            <td class="auto-style16"></td>
            <td class="auto-style16"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22"></td>
            <td class="auto-style60"></td>
            <td class="auto-style24"></td>
            <td class="auto-style25"></td>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style27"></td>
            <td class="auto-style61">Articulos</td>
            <td class="auto-style29">
                <asp:DropDownList ID="ArticulosDropDownList" runat="server" Height="27px" Width="169px">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp; Cantidad
                <asp:TextBox ID="cantTextBox" runat="server" Width="88px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cantTextBox" ErrorMessage="Favor Ingrese la cantidad de articulos" ForeColor="Red" ValidationGroup="Add">*</asp:RequiredFieldValidator>
&nbsp;
                <asp:Button ID="AddButton" runat="server" OnClick="AddButton_Click" CssClass="btn btn-default" Text="Agregar" ValidationGroup="Add" />
            </td>
            <td class="auto-style30"></td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style32"></td>
            <td class="auto-style62"></td>
            <td class="auto-style34"></td>
            <td class="auto-style35"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
        </tr>
        <tr>
            <td class="auto-style36"></td>
            <td class="auto-style37"></td>
            <td class="auto-style63"></td>
            <td class="auto-style39">
                <asp:GridView ID="ArtGridView" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="326px">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </td>
            <td class="auto-style40"></td>
            <td class="auto-style36">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="Add" />
            </td>
            <td class="auto-style36"></td>
            <td class="auto-style36"></td>
            <td class="auto-style36"></td>
            <td class="auto-style36"></td>
        </tr>
        <tr>
            <td></td>
            <td class="auto-style42"></td>
            <td class="auto-style64"></td>
            <td class="auto-style5"></td>
            <td class="auto-style4"></td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" ValidationGroup="Save" />
            </td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td class="auto-style57">Monto</td>
            <td class="auto-style9">
                <asp:TextBox ID="MontoTextBox" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style6">
                <asp:ValidationSummary ID="ValidationSummary3" runat="server" ForeColor="Red" ValidationGroup="Edit" />
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style44"></td>
            <td class="auto-style45"></td>
            <td class="auto-style65"></td>
            <td class="auto-style47">
                </td>
            <td class="auto-style48"></td>
            <td class="auto-style44"></td>
            <td class="auto-style44"></td>
            <td class="auto-style44"></td>
            <td class="auto-style44"></td>
            <td class="auto-style44"></td>
        </tr>
        <tr>
            <td class="auto-style52"></td>
            <td class="auto-style53"></td>
            <td class="auto-style66"></td>
            <td class="auto-style55">
                &nbsp;<asp:Button ID="NewButton" runat="server" CssClass="btn btn-warning" Text="Nuevo" Width="97px" OnClick="NewButton_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="SaveButton" runat="server" CssClass="btn btn-success"  Text="Guardar" OnClick="SaveButton_Click" style="margin-left: 4" ValidationGroup="Save" />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="UpdateButton" CssClass="btn btn-info" runat="server" Text="Modificar" OnClick="UpdateButton_Click" ValidationGroup="Edit" />
                &nbsp;&nbsp;
                <asp:Button ID="DeleteButton" runat="server" CssClass="btn btn-danger" Text="Eliminar" OnClick="DeleteButton_Click" ValidationGroup="ID" />
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style56"></td>
            <td class="auto-style52"></td>
            <td class="auto-style52"></td>
            <td class="auto-style52"></td>
            <td class="auto-style52"></td>
            <td class="auto-style52"></td>
        </tr>
        <tr>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style67">&nbsp;</td>
            <td class="auto-style50">
                &nbsp;</td>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
