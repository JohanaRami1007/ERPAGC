using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ERP.Models
{
    public class Usuarios
    {
        public int ID { get; set; }

        public String Usuario { get; set; }
        public String Correo { get; set; }
        public String Contraseña { get; set; }
        public String Perfil { get; set; }

        public virtual List<CotizacionVenta> Cotizaciones { get; set; }
        public virtual List<Pedido> Pedidos { get; set; }
    }
}