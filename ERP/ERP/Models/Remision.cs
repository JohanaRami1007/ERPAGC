using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ERP.Models
{
    public class Remision
    {
        [Key]
        public String ID { get; set; }

        [Required]
        public String IDCotizacionVenta { get; set; }
        public virtual CotizacionVenta CotizacionVenta { get; set; }
        public DateTime FechaEntrega { get; set; }
    }
}