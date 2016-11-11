<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cArticulosWebForm.aspx.cs" Inherits="Parcial2WebApplication1.Consultas.cArticulosWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 40px;
        }
        .auto-style7 {
            width: 126px;
        }
        .auto-style9 {
            width: 312px;
        }
        .auto-style12 {
            width: 104px;
        }
        .auto-style13 {
            width: 248px;
            margin-left: 0px;
        }
        .auto-style14 {
            width: 343px;
        }
        .auto-style21 {
            height: 19px;
        }
        .auto-style22 {
            width: 312px;
            height: 19px;
        }
        .auto-style23 {
            width: 40px;
            height: 19px;
        }
        .auto-style24 {
            width: 104px;
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22"></td>
            <td class="auto-style23"></td>
            <td colspan="2" class="auto-style21">&nbsp;
                <h3 class="auto-style13">Consulta de Articulos</h3>
                <p class="auto-style13">&nbsp;</p>
            </td>
            <td class="auto-style24"></td>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td></td>
            <td class="auto-style9">
                <ul class="nav nav-tabs">
  <li role="presentation" ><a href="/Registros/rArticulosWebForm.aspx">Registro</a></li>
  <li role="presentation" class="active"><a href="/Consultas/cArticuloswebForm.aspx">Consulta</a></li>

</ul>
            </td>
            <td class="auto-style4">Filtro</td>
            <td class="auto-style7">
                <asp:DropDownList ID="FiltroDropDownList" CssClass="form form-control" runat="server" Height="18px" Width="114px">
                    <asp:ListItem>ArticuloId</asp:ListItem>
                            <asp:ListItem>Descripcion</asp:ListItem>
                            <asp:ListItem>Existencia</asp:ListItem>
                            
                </asp:DropDownList>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="FiltroTextBox"  runat="server" Width="235px"></asp:TextBox>
&nbsp;&nbsp;<asp:Button ID="SearchButton" CssClass="btn btn-info" runat="server" Text="Buscar" OnClick="SearchButton_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style12">
            </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="ConsultaGridView" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
