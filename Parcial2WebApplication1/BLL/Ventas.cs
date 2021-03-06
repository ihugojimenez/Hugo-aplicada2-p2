﻿using DAL;
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

        public Ventas()
        {
            
            this.Fecha = "";
            this.Monto = 0.00f;
            this.Detalle = new List<VentasDetalle>();
        }

        public override bool Insertar()
        {
            bool retorno;
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
                retorno = true;
            }catch
            {
                retorno = false;
            }

            return retorno;
        }

        public override bool Editar()
        {
            bool retorno = false;
            try
            {
                retorno = con.Ejecutar(String.Format("Update Ventas set Fecha='{0}', Monto={1} Where VentaId ={2}", this.Fecha, this.Monto, this.VentaId));
                if (retorno)
                {
                    con.Ejecutar(String.Format("Delete from VentasDetalle Where VentaId= {0}", this.VentaId));
                    foreach (VentasDetalle var in this.Detalle)
                    {
                        con.Ejecutar(string.Format("Insert into VentasDetalle(VentaId, ArticuloId, Cantidad, Precio) Values ({0},{1},{2},{3})", this.VentaId, var.ArticuloId, var.Cantidad, var.Precio));
                    }
                }
            }
            catch (Exception ex)
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
                retorno = con.Ejecutar(string.Format("Delete from VentasDetalle where VentaId = " + this.VentaId + ";" + " Delete from Ventas where VentaId =" + this.VentaId));
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

            try
            {
                dt = con.ObtenerDatos(string.Format("Select * from Ventas Where VentaId = " + IdBuscado));
                if (dt.Rows.Count > 0)
                {
                    this.VentaId = IdBuscado;
                    this.Fecha = dt.Rows[0]["Fecha"].ToString();
                    this.Monto = Convert.ToSingle(dt.Rows[0]["Monto"].ToString());
                    
                }

                det = con.ObtenerDatos(string.Format("Select * from VentasDetalle where VentaId = " + IdBuscado));
                foreach (DataRow dr in det.Rows)
                {
                    this.AgregarArticulos(IdBuscado, (int)dr["ArticuloId"], (int)dr["Cantidad"], Convert.ToSingle(dr["Precio"]));
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }

            

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string OrdenFinal = "";

            if (!Orden.Equals(""))
            {
                OrdenFinal = " Order by " + Orden;
            }
            return conexion.ObtenerDatos("select " + Campos + " from Ventas as V inner join VentasDetalle VD on V.VentaId=VD.VentaId inner join Articulos A on VD.ArticuloId=A.ArticuloId where " + Condicion + " " + OrdenFinal + " --");
        }

        public void AgregarArticulos(int VentaId, int ArticuloId, int Cantidad, float Precio)
        {
            this.Detalle.Add(new VentasDetalle(VentaId, ArticuloId, Cantidad, Precio));
        }
    }
}
