<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ERP.Vistas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Recursos/LOGO CUBO.png" rel="icon" />
    <title>Login</title>
</head>
<body class="sesion text-center">
    <form id="form1" runat="server">
        <header class=" bg-dark p-2 text-light text-center">
            <a class="navbar-brand mb-5" href="login.aspx">
                <asp:Image ID="Logo" runat="server" ImageUrl="~/Vistas/Recursos/LOGO CUBO.png" alt="Logo" Width="58" Height="48" class="d-inline-block align-text-center" />
                <font clas="font">AGC COMERCIAL</font>
            </a>
        </header>
        <br />
        <br />
        <section class="container justify-content-center border mt-5 login text-center text-light align-content-center">
            <h2 class="fw-bold mb-2 text-uppercase mb-3 mt-5 text-center">Iniciar sesión</h2>
            <p class="text-white-50 mb-5 text-center">Por favor ingrese usuario y contraseña!</p>
            <asp:TextBox ID="txtCorreo" runat="server" class="textBox mb-2"></asp:TextBox>
            <p>Correo</p>
            <asp:TextBox ID="txtContraseña" runat="server" class="textBox mt-2 mb-2" TextMode="Password"></asp:TextBox>
            <p class="mb-5">Contraseña</p>
            <asp:HyperLink ID="hlRecuperar" runat="server" ForeColor="White">¿Olvidaste tu contraseña?</asp:HyperLink>
            <br />
            <asp:Button ID="btnIniciar" runat="server" Text="Iniciar sesión" Class="color mt-3 mb-5" />
        </section>
    </form>
    <script src="../Scripts/bootstrap.min.js"></script>
</body>
</html>
