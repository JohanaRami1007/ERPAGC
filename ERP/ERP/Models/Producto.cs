using ERP.Vistas.Paginas.Modulos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ERP.Models
{
    public class Producto
    {
        public String ID { get; set; }

        public String Nombre { get; set; }
        public String Descripcion { get; set; }
        public float Precio { get; set; }
        public String Categoria { get; set; }

        public virtual List<Pedido> Pedidos { get; set; }
        public virtual List<CotizacionVenta> Cotizaciones { get; set; }
    }
}