using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Usuarios : ClaseMaestra
    {

        ConexionDb con = new ConexionDb();

        public int IdUsuario { get; set; }
        public string NombreUsuario { get; set; }
        public string Contraseña { get; set; }
        public string Correo { get; set; }

        public Usuarios()
        {

        }



        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();

            dt = con.ObtenerDatos(string.Format("Select * from Usuarios Where IdUsuario =" + IdBuscado));

            if(dt.Rows.Count > 0)
            {
                this.IdUsuario = IdBuscado;
                this.NombreUsuario = dt.Rows[0]["NombreUsuario"].ToString();
                this.Contraseña = dt.Rows[0]["Contraseña"].ToString();
                this.Correo = dt.Rows[0]["Correo"].ToString();
            }

            return dt.Rows.Count > 0;
        }

        public override bool Editar()
        {
            bool retorno;

            try
            {
                retorno = con.Ejecutar(string.Format("Update Usuarios set NombreUsuario = '{0}', Contraseña '{1}', Correo '{2}'", this.NombreUsuario, this.Contraseña, this.Correo));
            }
            catch
            {
                retorno = false;
            }

            return retorno;


        }

        public override bool Eliminar()
        {
            bool retorno;

            try
            {
                retorno = con.Ejecutar(string.Format("Delete  from Usuarios where IdUsuario = {0}", this.IdUsuario));

            }
            catch
            {
                retorno = false;
            }

            return retorno;
        }

        public override bool Insertar()
        {
            bool retorno;

            try
            {
                retorno = con.Ejecutar(string.Format("Insert into Usuarios(NombreUsuario, Contraseña, Correo) Values('{0}', '{1}', '{2}')", this.NombreUsuario, this.Contraseña, this.Correo));
            }
            catch (Exception ex) { throw ex; }

            return retorno;

        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            throw new NotImplementedException();
        }
    }
}
