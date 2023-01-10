<%@ Page Title="Productos" Language="C#" MasterPageFile="~/Vistas/Paginas/Masters/plantilla.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="ERP.Vistas.Paginas.Modulos.Productos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Productos container-fluid text-center text-light p-4">
        <section>
            <article>
                <div class="row text-center justify-content-center">
                    <div class="col m-1 bg-dark rounded-2 grid">
                        <div class="row mt-2 mb-2">
                            <div class="col text-end p-2 align-self-center">
                                <asp:Label ID="lblSearchProducto" runat="server" Text="Buscar producto"></asp:Label>
                            </div>
                            <div class="col align-self-center p-2 text-center">
                                <asp:TextBox ID="txtSearch" runat="server" Class="txt"></asp:TextBox>
                            </div>
                            <div class="col align-self-center p-2 text-start">
                                <asp:ImageButton ID="imbSearch" runat="server" ImageUrl="~/Vistas/Recursos/magnifying-glass-solid.svg" Class="buscar p-2 rounded-circle" ImageAlign="Middle" />
                            </div>
                        </div>
                        <div class="row mt-2 mb-2">
                            <div class="col align-self-center">
                                <label>Buscar por categoría el producto</label>
                            </div>
                            <div class="col">
                                <asp:DropDownList ID="FiltroOrden" runat="server" Class="Drop bg-dark text-light text-center p-2">
                                    <asp:ListItem Selected="True" disabled="True"> Categorías</asp:ListItem>
                                    <asp:ListItem>Categorías de productos</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row mt-4 text-center justify-content-center">
                            <p>Productos en el sistema</p>
                            <asp:GridView ID="gvClientes" runat="server"></asp:GridView>
                        </div>
                    </div>
                    <div class="col-12  col-lg-4  m-1 agregar bg-dark rounded-2 text-center justify-content-center">
                        <p>Agregar producto</p>
                        <div class="row justify-content-center text-center">
                            <asp:Label ID="lblCodigo" runat="server" Text="Código del producto"></asp:Label>
                            <asp:TextBox ID="txtCodigoProducto" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblNombreProducto" runat="server" Text="Nombre del producto"></asp:Label>
                            <asp:TextBox ID="txtNombreProducto" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblCategoria" runat="server" Text="Categoría del producto"></asp:Label>
                            <asp:TextBox ID="txtCategoria" runat="server" Class="producto mt-2 text-center mb-3"></asp:TextBox>
                            <asp:Label ID="lblPrecio" runat="server" Text="Precio del producto"></asp:Label>
                            <asp:TextBox ID="txtPrecioProducto" runat="server" Class="producto mt-2 text-center mb-3" TextMode="Number"></asp:TextBox>
                            <asp:Label ID="lblDescripcion" runat="server" Text="Descripción del producto"></asp:Label>
                            <asp:TextBox ID="txtDescripcion" runat="server" Class="producto mt-2 text-center mb-3" TextMode="MultiLine"></asp:TextBox>
                            <asp:Label ID="lblImagen" runat="server" Text="Imagen del producto"></asp:Label>
                            <div class="col"></div>
                            <div class="col">
                                <asp:FileUpload ID="fuProducto" runat="server" Class="mt-4" />
                            </div>
                            <div class="col"></div>
                            <div class="row justify-content-center mb-3 mt-2 ">
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
