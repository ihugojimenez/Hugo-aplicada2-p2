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
            bool retorno;

            try
            {
                retorno = con.Ejecutar(string.Format("Insert into Articulos(Descripcion, Existencia, Precio) Values('{0}', {1}, {2})", this.Descripcion, this.Existencia, this.Precio));


            }catch(Exception ex)
            {
                throw ex;
            }

            return retorno;
        }

        public override bool Editar()
        {
            bool retorno;

            try
            {
                retorno = con.Ejecutar(string.Format("Update Articulos set Descripcion = '{0}', Existencia = {1}, Precio = {2} Where ArticuloId = {3}", this.Descripcion, this.Existencia, this.Precio, this.ArticuloId));
            }catch(Exception ex)
            {
                throw ex;
            }

            return retorno;
        }

        public override bool Eliminar()
        {
            bool retorno;

            try
            {
                retorno = con.Ejecutar(string.Format("Delete from Articulos Where ArticuloId = {0}", this.ArticuloId));
            }catch(Exception ex)
            {
                throw ex;
            }

            return retorno;
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

        public void EditarExistencia(int id, int cant, bool op)
        {
            int aux;
            try
            {
                if (op == true)
                    aux = this.Existencia - cant;
                else
                    aux = this.Existencia + cant;

                
                con.Ejecutar(string.Format("Update Articulos set Existencia = {0} Where ArticuloId = {1}", aux, id));
            }catch(Exception ex)
            {
                throw ex;
            }
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
