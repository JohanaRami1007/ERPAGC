using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERP.Vistas.Paginas.Masters
{
    public partial class plantilla : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Ventas_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.RedirectToRoute(Ventas.SelectedItem.Value);
        }

        protected void Catalogos_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.RedirectToRoute(Catalogos.SelectedItem.Value);
        }

        protected void imbtnInicio_Click(object sender, ImageClickEventArgs e)
        {
            Response.RedirectToRoute("inicio");
        }
    }
}