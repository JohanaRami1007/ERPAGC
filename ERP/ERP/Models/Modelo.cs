using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace ERP.Models
{
    public partial class Modelo : DbContext
    {
        public Modelo()
            : base("name=Modelo")
        {
        }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }

        public virtual DbSet<Usuarios> Usuarios { get; set; }
        public virtual DbSet<Proveedor> Proveedor { get; set; }
        public virtual DbSet<Pedido> Pedido { get; set; }
        public virtual DbSet<Producto> Producto { get; set; }
        public virtual DbSet<Cliente> Cliente { get; set; }
        public virtual DbSet<CotizacionVenta> CotizacionVenta { get; set; }
        public virtual DbSet<Remision> Remision { get; set; }
    }
}
