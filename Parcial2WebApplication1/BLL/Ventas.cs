using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Ventas : ClaseMaestra
    {

        ConexionDb con = new ConexionDb();
        public int VentaId { get; set; }
        public string Fecha { get; set; }
        public float  Monto { get; set; }
        public List<VentasDetalle> Detalle { get; set; }

        public override bool Insertar()
        {
            int aux;
            object identity;

            try
            {
                identity = con.ObtenerValor(string.Format("Insert into Ventas(Fecha, Monto) Values('{0}', {1}); Select @@Identity", this.Fecha, this.Monto));

                int.TryParse(identity.ToString(), out aux);

                foreach(VentasDetalle d in this.Detalle)
                {
                    con.Ejecutar(string.Format("Insert into VentasDetalle(VentaId, ArticuloId, Cantidad, Precio) Values({0}, {1}, {2}, {3})", aux, d.ArticuloId, d.Cantidad, d.Precio));
                }
            }catch(Exception ex)
            {
                throw ex;
            }

            return aux > 0;
        }

        public override bool Editar()
        {
            throw new NotImplementedException();
        }

        public override bool Eliminar()
        {
            bool retorno;

            try
            {
                retorno = con.Ejecutar(string.Format("Delete from VentasDetalle where VentaId = " + VentaId + ";" + " Delete from Ventas where VentaId =" + VentaId));
            }catch(Exception ex)
            {
                throw ex;
            }

            return retorno;
        }

        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();
            DataTable det = new DataTable();

            dt = con.ObtenerDatos(string.Format("Select * from Ventas Where VentaId = " + IdBuscado));
            if(dt.Rows.Count > 0)
            {
                this.VentaId = IdBuscado;
                this.Fecha = dt.Rows[0]["Fecha"].ToString();
                this.Monto = Convert.ToSingle(dt.Rows[0]["Monto"].ToString());
            }

            det = con.ObtenerDatos(string.Format("Select * from VentasDetalle where VentaId = " + IdBuscado));
            foreach(DataRow dr in det.Rows)
            {
                this.AgregarArticulos(IdBuscado, (int)dr["ArticuloId"], (int)dr["Cantidad"], Convert.ToSingle(dr["Precio"]));
            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            throw new NotImplementedException();
        }

        public void AgregarArticulos(int VentaId, int ArticuloId, int Cantidad, float Precio)
        {
            this.Detalle.Add(new VentasDetalle(VentaId, ArticuloId, Cantidad, Precio));
        }
    }
}
