<%@ Page Title="Clientes" Language="C#" MasterPageFile="~/Vistas/Paginas/Masters/plantilla.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="ERP.Vistas.Paginas.Modulos.Clientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Clientes container-fluid text-center text-light p-4">
        <h1>Clientes</h1>
        <section>
            <article>
                <div class="row">
                    <div class="col m-1 bg-dark rounded-2 grid">
                        <div class="row mt-2 mb-2">
                            <div class="col align-self-center">
                                <label>Buscar clientes por la categoría de los productos</label>
                            </div>
                            <div class="col">
                                <asp:DropDownList ID="FiltroOrden" runat="server" Class="Drop bg-dark text-light text-center p-2">
                                    <asp:ListItem Selected="True" disabled="True"> Categorías</asp:ListItem>
                                    <asp:ListItem>Categorías de productos</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row mt-4 text-center justify-content-center">
                            <p>Clientes registrados en el sistema</p>
                            <asp:GridView ID="gvClientes" runat="server"></asp:GridView>
                        </div>
                    </div>
                    <div class="col-12  col-lg-4 m-1 agregar bg-dark rounded-2">
                        <p>Registrar cliente</p>
                        <div class="row justify-content-center text-center">
                            <asp:Label ID="lblRfc" runat="server" Text="RFC del cliente"></asp:Label>
                            <asp:TextBox ID="txtRFC" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblNombre" runat="server" Text="Nombre del cliente"></asp:Label>
                            <asp:TextBox ID="txtNombreCliente" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblDireccionCliente" runat="server" Text="Dirección del cliente"></asp:Label>
                            <asp:TextBox ID="txtDireccionCliente" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblTel" runat="server" Text="Teléfono del cliente"></asp:Label>
                            <asp:TextBox ID="txtTel" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblEmail" runat="server" Text="Correo del cliente"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <div class="row justify-content-center">
                                <asp:ImageButton ID="ibGuardarCliente" runat="server" ImageAlign="Middle" ImageUrl="~/Vistas/Recursos/circle-plus-solid.svg" Class="circle-plus mt-3 p-2 rounded-circle" />
                                <label class="mb-3">Agregar cliente</label>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </section>
    </div>
</asp:Content>
