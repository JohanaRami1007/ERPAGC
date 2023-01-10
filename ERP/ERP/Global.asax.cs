using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Routing;

namespace ERP
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            RouteTable.Routes.MapPageRoute("Cerrar", "Logout","~/Vistas/login.aspx");
            RouteTable.Routes.MapPageRoute("Inicio","inicio", "~/Vistas/Paginas/inicio.aspx");
            RouteTable.Routes.MapPageRoute("Clientes","clientes","~/Vistas/Paginas/Modulos/Clientes.aspx");
            RouteTable.Routes.MapPageRoute("Cotizaciones","cotizaciones","~/Vistas/Paginas/Modulos/Cotizaciones.aspx");
            RouteTable.Routes.MapPageRoute("Orden","orden","~/Vistas/Paginas/Modulos/OrdenVenta.aspx");
            RouteTable.Routes.MapPageRoute("Productos","productos","~/Vistas/Paginas/Modulos/Productos.aspx");
            RouteTable.Routes.MapPageRoute("Proveedores","proveedor","~/Vistas/Paginas/Modulos/Proveedor.aspx");
            GlobalConfiguration.Configure(WebApiConfig.Register);
        }
    }
}
