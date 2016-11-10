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
        float Monto;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            Articulos art = new Articulos();
            
            if(!IsPostBack)
            {
                Monto += Monto;
                ArticulosDropDownList.DataSource = art.Listado("*", "1=1", "");
                ArticulosDropDownList.DataTextField = "Descripcion";
                ArticulosDropDownList.DataValueField = "ArticuloId";
                ArticulosDropDownList.DataBind();

                dt.Columns.AddRange(new DataColumn[4] {new DataColumn("Articulo ID") ,new DataColumn("Descripcion"), new DataColumn("Cantidad"), new DataColumn("Precio") });
                ViewState["Detalle"] = dt;
                ViewState["Monto"] = Monto;
            }
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            Articulos art = new Articulos();
            DataTable dt = (DataTable)ViewState["Detalle"];
            art.Buscar(Convert.ToInt32(ArticulosDropDownList.SelectedValue));
            aux = Monto + art.Precio * Convert.ToInt32(cantTextBox.Text);
            dt.Rows.Add(art.ArticuloId,art.Descripcion, cantTextBox.Text, art.Precio);
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
                v.AgregarArticulos(v.VentaId, Convert.ToInt32(g.Cells[0].Text), Convert.ToInt32(g.Cells[2].Text), Convert.ToSingle(g.Cells[3].Text));
            }

        }

        protected void LlenaCampos(Ventas v)
        {
            FechaTextBox.Text = v.Fecha;
            MontoTextBox.Text = v.Monto.ToString();


        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Ventas v = new Ventas();

            LlenarClase(v);
            

            if (v.Insertar())
            {
                Utilitarios.ShowToastr(this, "Guardado", "Mensaje", "success");
            }
        }

        protected void Limpiar()
        {
            FechaTextBox.Text = "";
            IdTextBox.Text = "";
            MontoTextBox.Text = "";
            cantTextBox.Text = "";
            ArtGridView.DataSource = null;
            ArtGridView.DataBind();
        }

        protected void NewButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {

            Ventas v = new Ventas();
            v.Buscar(Convert.ToInt32(IdTextBox.Text));
            v.Eliminar();
        }
    }
}