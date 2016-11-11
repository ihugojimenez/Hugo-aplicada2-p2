using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial2WebApplication1.Registros
{
    public partial class rArticulosWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LlenaCampos(Articulos a)
        {
            IdTextBox.Text = a.ArticuloId.ToString();
            DescTextBox.Text = a.Descripcion.ToString();
            existenciaTextBox.Text = a.Existencia.ToString();
            PrecioTextBox.Text = a.Precio.ToString();
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            Articulos art = new Articulos();
            int id =0;
            int.TryParse(IdTextBox.Text, out id);
            art.Buscar(id);
            LlenaCampos(art);
        }

        public void Limpiar()
        {
            IdTextBox.Text = "";
            DescTextBox.Text = "";
            existenciaTextBox.Text = "";
            PrecioTextBox.Text = "";

        }

        protected void NewButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void LlenaClase(Articulos a)
        {
            a.ArticuloId = Convert.ToInt32(IdTextBox.Text);
            a.Descripcion = DescTextBox.Text;
            a.Existencia = Convert.ToInt32(existenciaTextBox.Text);
            a.Precio = Convert.ToSingle(PrecioTextBox.Text);
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Articulos a = new Articulos();
            LlenaClase(a);

            if(a.Insertar())
            {
                Utilitarios.ShowToastr(this, "Guardado", "Mensaje", "success");
                Limpiar();
            }
        }

        protected void EditButton_Click(object sender, EventArgs e)
        {
            Articulos a = new Articulos();
            LlenaClase(a);
            if(a.Editar())
            {
                Utilitarios.ShowToastr(this, "Modificado", "Mensaje", "success");
                Limpiar();
            }
        }
    }
}