using ERP.Vistas.Paginas.Modulos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ERP.Models
{
    public class Cliente
    {
        public String ID { get; set; }

        public String Nombre { get; set; }
        public String Direccion { get; set; }
        public String Telefono { get; set; }
        public String Correo { get; set; }

        public virtual List<CotizacionVenta> Cotizaciones { get; set; }
    }
}