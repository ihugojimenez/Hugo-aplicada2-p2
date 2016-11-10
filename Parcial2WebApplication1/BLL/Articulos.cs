using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Articulos : ClaseMaestra
    {
        ConexionDb con = new ConexionDb();

        public int ArticuloId { get; set; }
        public string Descripcion { get; set; }
        public int Existencia { get; set; }
        public float Precio { get; set; }

        public Articulos()
        {

        }

        public Articulos(string Desc, int Exi, float Prc)
        {
            this.Descripcion = Desc;
            this.Existencia = Exi;
            this.Precio = Prc;

        }

        public override bool Insertar()
        {
            throw new NotImplementedException();
        }

        public override bool Editar()
        {
            throw new NotImplementedException();
        }

        public override bool Eliminar()
        {
            throw new NotImplementedException();
        }

        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();

            try
            {
                dt = con.ObtenerDatos(string.Format("Select * from Articulos where ArticuloId = " + IdBuscado));
                if (dt.Rows.Count > 0)
                {
                    this.ArticuloId = IdBuscado;
                    this.Descripcion = dt.Rows[0]["Descripcion"].ToString();
                    this.Existencia = (int)dt.Rows[0]["Existencia"];
                    this.Precio = Convert.ToSingle(dt.Rows[0]["Precio"]);
                }
            }catch(Exception ex)
            {
                throw ex;

            }
            

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string OrdenFinal = "";
            if (!Orden.Equals(""))
                OrdenFinal = " Orden by " + Orden;
            return con.ObtenerDatos(string.Format("Select " + Campos + " From Articulos Where " + Condicion + OrdenFinal));
        }
    }
}
