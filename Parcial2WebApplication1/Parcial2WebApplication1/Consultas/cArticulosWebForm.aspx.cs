using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial2WebApplication1.Consultas
{
    public partial class cArticulosWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string Condicion = "";
            Articulos a = new Articulos();
            if (string.IsNullOrWhiteSpace(FiltroTextBox.Text))
            {
                Condicion = "1=1";
            }
            else
            {
                if (!string.IsNullOrWhiteSpace(FiltroTextBox.Text))
                {
                    Condicion = FiltroDropDownList.SelectedValue + " like '%" + FiltroTextBox.Text + "%'";
                }
            }
            ConsultaGridView.DataSource = a.Listado("ArticuloId, Descripcion, Existencia, Precio", Condicion, "");
            ConsultaGridView.DataBind();
        }
    }
}