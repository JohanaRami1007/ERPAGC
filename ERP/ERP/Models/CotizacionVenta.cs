using ERP.Vistas.Paginas.Modulos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ERP.Models
{
    public class CotizacionVenta
    {
        public String ID { get; set; }

        public String IDCliente { get; set; }
        public virtual Cliente Cliente { get; set; }
        public int IDUsuario { get; set; }
        public virtual Usuarios Usuarios { get; set; }
        public String ProductoID { get; set; }
        public virtual Producto Productos { get; set; }
        public int Cantidad { get; set; }
        public String Descripcion { get; set; }
        public float Precio { get; set; }
        public float Total { get; set; }
        public DateTime Fecha { get; set; }
        public bool Confirmacion { get; set; }
    }
}