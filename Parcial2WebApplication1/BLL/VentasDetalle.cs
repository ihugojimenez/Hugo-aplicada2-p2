using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class VentasDetalle 
    {
        ConexionDb con = new ConexionDb();
        public int Id { get; set; }
        public int VentaId { get; set; }
        public int ArticuloId { get; set; }
        public int Cantidad { get; set; }
        public float Precio { get; set; }

        public VentasDetalle()
        {

        }

        public VentasDetalle(int VentaId, int ArticuloId, int Cantidad, float Precio)
        {
            this.VentaId = VentaId;
            this.ArticuloId = ArticuloId;
            this.Cantidad = Cantidad;
            this.Precio = Precio;
        }

        public bool Buscar(int id)
        {
            
            DataTable dt = new DataTable();

            try
            {
                dt = con.ObtenerDatos("Select * from VentasDetalle Where VentaId = " + id);
                if(dt.Rows.Count > 0)
                {
                    this.Id = Id;
                    this.VentaId = (int)dt.Rows[0]["VentaId"];
                    this.ArticuloId = (int)dt.Rows[0]["ArticuloId"];
                    this.Cantidad = (int)dt.Rows[0]["Cantidad"];
                    this.Precio = float.Parse(dt.Rows[0]["Precio"].ToString());
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
            return dt.Rows.Count > 0;
        }
    }
}
