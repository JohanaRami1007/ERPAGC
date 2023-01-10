<%@ Page Title="Proveedores" Language="C#" MasterPageFile="~/Vistas/Paginas/Masters/plantilla.Master" AutoEventWireup="true" CodeBehind="Proveedor.aspx.cs" Inherits="ERP.Vistas.Paginas.Modulos.Proveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Proveedor container-fluid text-center text-light p-4">
        <section>
            <article>
                <div class="row">
                    <div class="col m-1 bg-dark rounded-2 grid">
                        <div class="row mt-2 mb-2">
                            <div class="col align-self-center">
                                <label>Buscar proveedores por la categoría de los productos</label>
                            </div>
                            <div class="col">
                                <asp:DropDownList ID="FiltroOrden" runat="server" Class="Drop bg-dark text-light text-center p-2">
                                    <asp:ListItem Selected="True" disabled="True"> Categorías</asp:ListItem>
                                    <asp:ListItem>Categorías de productos</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row mt-4 text-center justify-content-center">
                            <p>Proveedores registrados en el sistema</p>
                            <asp:GridView ID="gvClientes" runat="server"></asp:GridView>
                        </div>
                    </div>
                    <div class="col-12  col-lg-4  m-1 agregar bg-dark rounded-2">
                        <p class="mt-2">Registrar proveedor</p>
                        <div class="row justify-content-center text-center">
                            <asp:Label ID="lblRFC" runat="server" Text="RFC del proveedor"></asp:Label>
                            <asp:TextBox ID="txtRFC" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblEmpresa" runat="server" Text="Nombre de la empresa"></asp:Label>
                            <asp:TextBox ID="txtEmpresa" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblRazonS" runat="server" Text="Razón social del proveedor"></asp:Label>
                            <asp:TextBox ID="txtRazonSocial" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblContacto" runat="server" Text="Contacto con la empresa"></asp:Label>
                            <asp:TextBox ID="txtContacto" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblCategoriaproveedor" runat="server" Text="Categoría del proveedor"></asp:Label>
                            <asp:TextBox ID="txtCategoriaProveedor" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblGiro" runat="server" Text="Giro de la empresa"></asp:Label>
                            <asp:TextBox ID="txtGiro" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblTel" runat="server" Text="Teléfono"></asp:Label>
                            <asp:TextBox ID="txtTel" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblDireccion" runat="server" Text="Dirección"></asp:Label>
                            <asp:TextBox ID="txtDireccion" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblZona" runat="server" Text="Zona"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <div class="row justify-content-center mb-3">
                                <asp:ImageButton ID="ibGuardarCliente" runat="server" ImageAlign="Middle" ImageUrl="~/Vistas/Recursos/circle-plus-solid.svg" Class="circle-plus mt-3 p-2 rounded-circle" />
                                <label>Agregar producto</label>
                            </div>

                        </div>
                    </div>
                </div>
            </article>
        </section>
    </div>
</asp:Content>
