using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERP.Vistas.Paginas
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogOut_Click(object sender, ImageClickEventArgs e)
        {
            Response.RedirectToRoute("Cerrar");
        }

        protected void imbtnInicio_Click(object sender, ImageClickEventArgs e)
        {
            Response.RedirectToRoute("Inicio");
        }
    }
}