<%@ Page Title="Cotizaciones" Language="C#" MasterPageFile="~/Vistas/Paginas/Masters/plantilla.Master" AutoEventWireup="true" CodeBehind="Cotizaciones.aspx.cs" Inherits="ERP.Vistas.Paginas.Modulos.Cotizaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Cotizaciones container-fluid text-center text-light p-4">
        <h1>Cotizaciones</h1>
        <section>
            <article>
                <div class="row text-center mt-5 justify-content-center">
                    <div class="col-12  col-lg-4  bg-dark rounded-2 agregar mt-2 p-4 ">
                        <asp:Label ID="lblProductos" runat="server" Text="Agrega un producto al catálogo" Style="border-bottom: solid #FE9900 2px; padding: 2px;"></asp:Label>
                        <div class="row justify-content-center text-center mt-3 align-content-center">
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
                            <asp:Label ID="lblImagen" runat="server" Text="Imagen del producto" Class=" mb-2"></asp:Label>
                            <div class="col"></div>
                            <div class="col">
                                <asp:FileUpload ID="fuCotizacionesS" runat="server" Class=" mt-4 mb-4 file" />
                            </div>
                            <div class="col"></div>
                            <div class="row justify-content-center">
                                <asp:ImageButton ID="ibGuardarProducto" runat="server" ImageAlign="Middle" ImageUrl="~/Vistas/Recursos/circle-plus-solid.svg" Class="circle-plus mt-3 p-2 rounded-circle" />
                                <label class="mb-3">Agregar producto</label>
                            </div>
                        </div>
                    </div>
                    <div class="col bg-dark m-2 grid rounded-2 p-5">
                        <div class="row mb-2">
                            <div class="col text-end  align-self-center">
                                <asp:Label ID="lblSearchProducto" runat="server" Text="Buscar producto"></asp:Label>
                            </div>
                            <div class="col align-self-center p-2 text-center">
                                <asp:TextBox ID="txtSearch" runat="server" Class="txt"></asp:TextBox>
                            </div>
                            <div class="col align-self-center p-2 text-start">
                                <asp:ImageButton ID="imbSearch" runat="server" ImageUrl="~/Vistas/Recursos/magnifying-glass-solid.svg" Class="buscar p-2 rounded-circle" ImageAlign="Middle" />
                            </div>
                        </div>
                        <div class="row border text-center resultados">
                            <asp:Label ID="lblResultados" runat="server" Text="Resultados de posibles productos"></asp:Label>
                            <div class="border p-3">
                                <asp:GridView ID="gvResultados" runat="server"></asp:GridView>
                            </div>
                        </div>
                        <br />
                        <div class="row text-center cotizados mb-1 mt-2">
                            <asp:Label ID="lblCotizados" runat="server" Text="Productos cotizados"></asp:Label>
                            <div class="border p-3">
                                <asp:GridView ID="gvCotizados" runat="server"></asp:GridView>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <asp:ImageButton ID="ibtnDownload" runat="server" ImageAlign="Middle" ImageUrl="~/Vistas/Recursos/download.png" Class="circle-plus mt-3 p-2 rounded-circle" />
                            <label class="mb-3">Descargar cotización</label>
                        </div>
                    </div>
                </div>
            </article>
        </section>
    </div>
</asp:Content>
