using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial2WebApplication1
{
    public partial class rVentasWebForm : System.Web.UI.Page
    {
        float aux;
        float Total;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            Articulos art = new Articulos();
            Total += Total;
            if(!IsPostBack)
            {
                ArticulosDropDownList.DataSource = art.Listado("*", "1=1", "");
                ArticulosDropDownList.DataTextField = "Descripcion";
                ArticulosDropDownList.DataValueField = "ArticuloId";
                ArticulosDropDownList.DataBind();

                dt.Columns.AddRange(new DataColumn[3] { new DataColumn("Descripcion"), new DataColumn("Existencia"), new DataColumn("Precio") });
                ViewState["Detalle"] = dt;
                ViewState["Monto"] = Total;
            }
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            Articulos art = new Articulos();
            DataTable dt = (DataTable)ViewState["Detalle"];
            art.Buscar(Convert.ToInt32(ArticulosDropDownList.SelectedValue));
            aux = art.Precio * Convert.ToInt32(cantTextBox.Text);
            dt.Rows.Add(art.Descripcion, cantTextBox.Text, art.Precio);
            ViewState["Detalle"] = dt;
            ArtGridView.DataSource = (DataTable)ViewState["Detalle"];
            ArtGridView.DataBind();
            ViewState["Monto"] = aux;
            MontoTextBox.Text = ViewState["Monto"].ToString();


        }

        protected void LlenarClase(Ventas v)
        {
            v.Fecha = FechaTextBox.Text;
            v.Monto = Convert.ToSingle(MontoTextBox.Text);

            foreach(GridViewRow g in ArtGridView.Rows)
            {
                v.AgregarArticulos(v.VentaId, Convert.ToInt32(g.Cells[0].Text), Convert.ToInt32(g.Cells[1].Text), Convert.ToSingle(g.Cells[2].Text));
            }

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Ventas v = new Ventas();

            LlenarClase(v);
        }
    }
}