namespace ERP.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class migracion1 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Clientes",
                c => new
                    {
                        ID = c.String(nullable: false, maxLength: 128),
                        Nombre = c.String(),
                        Direccion = c.String(),
                        Telefono = c.String(),
                        Correo = c.String(),
                    })
                .PrimaryKey(t => t.ID);
            
            CreateTable(
                "dbo.CotizacionVentas",
                c => new
                    {
                        ID = c.String(nullable: false, maxLength: 128),
                        IDCliente = c.String(),
                        IDUsuario = c.Int(nullable: false),
                        ProductoID = c.String(maxLength: 128),
                        Cantidad = c.Int(nullable: false),
                        Descripcion = c.String(),
                        Precio = c.Single(nullable: false),
                        Total = c.Single(nullable: false),
                        Fecha = c.DateTime(nullable: false),
                        Confirmacion = c.Boolean(nullable: false),
                        Cliente_ID = c.String(maxLength: 128),
                        Usuarios_ID = c.Int(),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Clientes", t => t.Cliente_ID)
                .ForeignKey("dbo.Productoes", t => t.ProductoID)
                .ForeignKey("dbo.Usuarios", t => t.Usuarios_ID)
                .Index(t => t.ProductoID)
                .Index(t => t.Cliente_ID)
                .Index(t => t.Usuarios_ID);
            
            CreateTable(
                "dbo.Productoes",
                c => new
                    {
                        ID = c.String(nullable: false, maxLength: 128),
                        Nombre = c.String(),
                        Descripcion = c.String(),
                        Precio = c.Single(nullable: false),
                        Categoria = c.String(),
                    })
                .PrimaryKey(t => t.ID);
            
            CreateTable(
                "dbo.Pedidoes",
                c => new
                    {
                        ID = c.String(nullable: false, maxLength: 128),
                        IDProveedor = c.String(),
                        IDUsuario = c.Int(nullable: false),
                        ProductoID = c.String(maxLength: 128),
                        Cantidad = c.Int(nullable: false),
                        PrecioUnitario = c.Single(nullable: false),
                        Total = c.Single(nullable: false),
                        ClabeBancaria = c.Long(nullable: false),
                        FechaInicio = c.DateTime(nullable: false),
                        FechaVencimiento = c.DateTime(nullable: false),
                        Proveedor_ID = c.String(maxLength: 128),
                        Usuarios_ID = c.Int(),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Productoes", t => t.ProductoID)
                .ForeignKey("dbo.Proveedors", t => t.Proveedor_ID)
                .ForeignKey("dbo.Usuarios", t => t.Usuarios_ID)
                .Index(t => t.ProductoID)
                .Index(t => t.Proveedor_ID)
                .Index(t => t.Usuarios_ID);
            
            CreateTable(
                "dbo.Proveedors",
                c => new
                    {
                        ID = c.String(nullable: false, maxLength: 128),
                        Empresa = c.String(),
                        RazonSocial = c.String(),
                        Contacto = c.String(),
                        Categoria = c.String(),
                        Giro = c.String(),
                        Telefono = c.String(),
                        Correo = c.String(),
                        Direccion = c.String(),
                        Zona = c.String(),
                    })
                .PrimaryKey(t => t.ID);
            
            CreateTable(
                "dbo.Usuarios",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Usuario = c.String(),
                        Correo = c.String(),
                        Contraseña = c.String(),
                        Perfil = c.String(),
                    })
                .PrimaryKey(t => t.ID);
            
            CreateTable(
                "dbo.Remisions",
                c => new
                    {
                        ID = c.String(nullable: false, maxLength: 128),
                        IDCotizacionVenta = c.String(nullable: false),
                        FechaEntrega = c.DateTime(nullable: false),
                        CotizacionVenta_ID = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.CotizacionVentas", t => t.CotizacionVenta_ID)
                .Index(t => t.CotizacionVenta_ID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Remisions", "CotizacionVenta_ID", "dbo.CotizacionVentas");
            DropForeignKey("dbo.Pedidoes", "Usuarios_ID", "dbo.Usuarios");
            DropForeignKey("dbo.CotizacionVentas", "Usuarios_ID", "dbo.Usuarios");
            DropForeignKey("dbo.Pedidoes", "Proveedor_ID", "dbo.Proveedors");
            DropForeignKey("dbo.Pedidoes", "ProductoID", "dbo.Productoes");
            DropForeignKey("dbo.CotizacionVentas", "ProductoID", "dbo.Productoes");
            DropForeignKey("dbo.CotizacionVentas", "Cliente_ID", "dbo.Clientes");
            DropIndex("dbo.Remisions", new[] { "CotizacionVenta_ID" });
            DropIndex("dbo.Pedidoes", new[] { "Usuarios_ID" });
            DropIndex("dbo.Pedidoes", new[] { "Proveedor_ID" });
            DropIndex("dbo.Pedidoes", new[] { "ProductoID" });
            DropIndex("dbo.CotizacionVentas", new[] { "Usuarios_ID" });
            DropIndex("dbo.CotizacionVentas", new[] { "Cliente_ID" });
            DropIndex("dbo.CotizacionVentas", new[] { "ProductoID" });
            DropTable("dbo.Remisions");
            DropTable("dbo.Usuarios");
            DropTable("dbo.Proveedors");
            DropTable("dbo.Pedidoes");
            DropTable("dbo.Productoes");
            DropTable("dbo.CotizacionVentas");
            DropTable("dbo.Clientes");
        }
    }
}
