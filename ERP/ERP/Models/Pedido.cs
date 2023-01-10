using ERP.Vistas.Paginas.Modulos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ERP.Models
{
    public class Pedido
    {
        public String ID { get; set; }

        public String IDProveedor { get; set; }
        public virtual Proveedor Proveedor { get; set; }
        public int IDUsuario { get; set; }
        public virtual Usuarios Usuarios { get; set; }
        public String ProductoID { get; set; }
        public virtual Producto Producto { get; set; }
        public int Cantidad { get; set; }
        public float PrecioUnitario { get; set; }
        public float Total { get; set; }
        public long ClabeBancaria { get; set; }
        public DateTime FechaInicio { get; set; }
        public DateTime FechaVencimiento { get; set; }
    }
}