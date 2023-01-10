<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="ERP.Vistas.Paginas.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Inicio</title>
    <link href="../Recursos/LOGO CUBO.png" rel="icon" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/b0cb49c5f4.js" crossorigin="anonymous"></script>
</head>
<body class="Orden">
    <form id="form1" runat="server" class="mb-5">
        <header>

            <nav class="navbar navbar-dark bg-dark navbar-expand-lg bg-body-tertiary text-center">
                <div class="container-fluid text-light">
                    <asp:ImageButton ID="imbtnInicio" runat="server" ImageUrl="~/Vistas/Recursos/LOGO CUBO.png" alt="Logo" Width="80" Height="60" OnClick="imbtnInicio_Click"  />
                    <li id="IconoSalir" class="mt-2">
                        <asp:ImageButton ID="LogOut" runat="server" ImageUrl="~/Vistas/Recursos/Power.png" OnClick="LogOut_Click" />
                        <a href="#" class="navbar-brand">
                            <font>CERRAR SESIÓN</font>
                        </a>
                    </li>
                </div>
            </nav>
        </header>
        <br />
        <section class="mt-5 mb-5">
            <article class="container justify-content-center text-center mt-5">
                <asp:Image ID="imgLogo" Class="img-fluid mt-4 p-3" runat="server" ImageUrl="~/Vistas/Recursos/LOGOS AGC - LINEA DE PRODUCTOS.png" />
                <p><sup>#tusproyectosdeprincipioafin</sup></p>
            </article>
            <article class="container mb-4">
                <div class="row bg-dark border rounded text-center text-light mb-1">
                    <h1>Módulos</h1>
                </div>
                <div class="row text-center border-danger bg-light rounded">
                    <div class="col p-1 mt-1 mb-3">
                        <h2 class="mb-3 mt-2">Ventas <i class="fa-solid fa-store"></i></h2>
                        <asp:HyperLink ID="hlOrden" runat="server" NavigateUrl="~/Vistas/Paginas/Modulos/OrdenVenta.aspx" Class="Link" Font-Bold="True">Orden de venta <i class="fa-solid fa-book-bookmark mb-3"></i></asp:HyperLink><br />
                        <asp:HyperLink ID="hlCotizacion" runat="server" NavigateUrl="~/Vistas/Paginas/Modulos/Cotizaciones.aspx" Class="Link" Font-Bold="True">Cotizaciones <i class="fa-solid fa-database"></i></asp:HyperLink>
                    </div>
                    <div class="col p-1 mt-1 mb-3">
                        <h2 class="mb-3 mt-2 ">Catálogos  <i class="fa-solid fa-book"></i></h2>
                        <asp:HyperLink ID="hlProductos" runat="server" NavigateUrl="~/Vistas/Paginas/Modulos/Productos.aspx" Class="Link" Font-Bold="True">Productos <i class="fa-solid fa-couch mb-2"></i></asp:HyperLink><br />
                        <asp:HyperLink ID="hlClinentes" runat="server" NavigateUrl="~/Vistas/Paginas/Modulos/Clientes.aspx" Class="Link" Font-Bold="True">Clientes <i class="fa-solid fa-user mb-2"></i></asp:HyperLink><br />
                        <asp:HyperLink ID="hlProveedores" runat="server" NavigateUrl="~/Vistas/Paginas/Modulos/Proveedor.aspx" Class="Link" Font-Bold="True">Proveedores <i class="fa-solid fa-handshake mb-3"></i></asp:HyperLink><br />
                    </div>
                </div>
            </article>
            <br />
        </section>
    </form>
    <br />
    <footer class="container-fluid bg-dark text-center position-relative mt-5">
        <div class="row justify-content-center">
            <div class="col p-2">
                <asp:Image ID="LogoFooter" runat="server" ImageUrl="~/Vistas/Recursos/LOGOS AGC - LINEA DE PRODUCTOS.png" alt="Logo" Height="120px" />
            </div>
            <div class="col align-self-center text-footer">
                <asp:Label ID="lbFooter" runat="server" Text="Priv. Héroes de Nacozari s/n, Ozumbilla,Tecámac, Santa María Ozumbilla, C.P.55760, Edo. Méx." ForeColor="#0F777E"></asp:Label>
                <div class="row">
                    <div class="col contacto">
                        <asp:HyperLink ID="hlTel" runat="server" NavigateUrl="tel:5562351766"><i class="fa-solid fa-phone m-2 p-2"></i> 55-6235-1766</asp:HyperLink><br />
                    </div>
                    <div class="col contacto">
                        <asp:HyperLink ID="hlWhats" runat="server" NavigateUrl="https://wa.link/sc3elf"><i class="fa-brands fa-whatsapp m-2 p-2"></i> 779 102 3377</asp:HyperLink><br />
                    </div>
                </div>
                <asp:Label ID="lbCopy" runat="server" Text="Derechos reservados - AGC Comercial © 2023" ForeColor="#FE9900"></asp:Label>
            </div>
            <div class="col align-self-center">
                <div class="row justify-content-center">
                    <div class="col">
                        <asp:HyperLink ID="hlFace" runat="server" NavigateUrl="https://www.facebook.com/agccomercialequipamiento"><i class="fa-brands fa-facebook m-2"></i> @agccomercialequipamiento</asp:HyperLink><br />
                    </div>
                    <div class="col">
                        <asp:HyperLink ID="hlIg" runat="server" NavigateUrl="https://www.facebook.com/agccomercialequipamiento"><i class="fa-brands fa-instagram m-2"></i> @agccomercialequipamiento</asp:HyperLink><br />
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script src="../../Scripts/bootstrap.min.js"></script>
</body>
</html>
