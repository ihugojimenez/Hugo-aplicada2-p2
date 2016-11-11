using BLL;
using DAL;
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
        ConexionDb con = new ConexionDb();
        ClaseMonto cm = new ClaseMonto();
        float aux;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            Articulos art = new Articulos();
            cm.Monto += cm.Monto; 
            
            if(!IsPostBack)
            {
                
                ArticulosDropDownList.DataSource = art.Listado("*", "1=1", "");
                ArticulosDropDownList.DataTextField = "Descripcion";
                ArticulosDropDownList.DataValueField = "ArticuloId";
                ArticulosDropDownList.DataBind();

                dt.Columns.AddRange(new DataColumn[4] {new DataColumn("Articulo ID") ,new DataColumn("Descripcion"), new DataColumn("Cantidad"), new DataColumn("Precio") });
                ViewState["Detalle"] = dt;
                ViewState["Monto"] = cm.Monto;
            }
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            Articulos art = new Articulos();
            DataTable dt = (DataTable)ViewState["Detalle"];
            art.Buscar(Convert.ToInt32(ArticulosDropDownList.SelectedValue));
            aux = (float)ViewState["Monto"];
            if(art.Existencia <= 0)
            {
                //Utilitarios.ShowToastr
            }
            dt.Rows.Add(art.ArticuloId,art.Descripcion, cantTextBox.Text, art.Precio);
            ViewState["Detalle"] = dt;
            ArtGridView.DataSource = (DataTable)ViewState["Detalle"];
            ArtGridView.DataBind();
            aux += art.Precio* Convert.ToInt32(cantTextBox.Text);
            ViewState["Monto"] = aux;
            MontoTextBox.Text = ViewState["Monto"].ToString();
            cantTextBox.Text = "";


        }

        protected void LlenarClase(Ventas v)
        {
            Articulos a = new Articulos();
            v.Fecha = FechaTextBox.Text;
            v.Monto = Convert.ToSingle(MontoTextBox.Text);
            int aux = 0;

            foreach(GridViewRow g in ArtGridView.Rows)
            {
                v.AgregarArticulos(v.VentaId, Convert.ToInt32(g.Cells[0].Text), Convert.ToInt32(g.Cells[2].Text), Convert.ToSingle(g.Cells[3].Text));
                a.Buscar(Convert.ToInt32(g.Cells[0].Text));
                a.EditarExistencia(Convert.ToInt32(g.Cells[0].Text),Convert.ToInt32(g.Cells[2].Text), true);
            }

        }

        protected void LlenaCampos(Ventas v)
        {
            
            VentasDetalle vd = new VentasDetalle();
            IdTextBox.Text = v.VentaId.ToString();
            FechaTextBox.Text = v.Fecha;
            MontoTextBox.Text = v.Monto.ToString();


            

            //foreach(var aux in v.Detalle)
            //{
            //    DataTable det = (DataTable)ViewState["Detalle"];
            //    a.Buscar(aux.ArticuloId);
            //    vd.Buscar(a.ArticuloId);
            //    det.Rows.Add(a.ArticuloId, a.Descripcion, vd.Cantidad ,a.Precio);
            //    ViewState["Detalle"] = det;
            //    ArtGridView.DataSource = det;
            //    ArtGridView.DataBind();


            //}
              





        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Ventas v = new Ventas();

            LlenarClase(v);
            

            if (v.Insertar())
            {
                Utilitarios.ShowToastr(this, "Guardado", "Mensaje", "success");
                Limpiar();
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
            Articulos a = new Articulos();
            VentasDetalle vd = new VentasDetalle();
            int id = 0;
            int cant = 0;
            int.TryParse(IdTextBox.Text, out id);
            v.VentaId = id;
            v.Buscar(id);
            DataTable dt = new DataTable();

            dt = con.ObtenerDatos(string.Format("Select * from VentasDetalle Where VentaId = " + id));
            if(dt.Rows.Count > 0)
            {
                vd.ArticuloId = (int)dt.Rows[0]["ArticuloId"];
                vd.Cantidad = (int)dt.Rows[0]["Cantidad"];
                //a.EditarExistencia(vd.ArticuloId, vd.Cantidad, false);
            }

            for(int ae =0; ae<= dt.Rows.Count; ae++)
            {
                vd.Buscar(id);
                a.EditarExistencia(vd.ArticuloId, vd.Cantidad, false);
            }
            if (v.Eliminar())
            {
                Utilitarios.ShowToastr(this, "Eliminado con exito", "Mensaje", "success");
                Limpiar();
            }
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            Ventas v = new Ventas();

            v.Buscar(Convert.ToInt32(IdTextBox.Text));
            ArtGridView.DataSource = v.Listado("V.VentaId as ID, A.Descripcion, VD.Cantidad, VD.Precio", "VentaId = " + IdTextBox.Text, "");
            //Limpiar();
            LlenaCampos(v);
        }
    }
}