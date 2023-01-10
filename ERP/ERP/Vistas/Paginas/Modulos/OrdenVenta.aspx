<%@ Page Title="OrdenVenta" Language="C#" MasterPageFile="~/Vistas/Paginas/Masters/plantilla.Master" AutoEventWireup="true" CodeBehind="OrdenVenta.aspx.cs" Inherits="ERP.Vistas.Paginas.Modulos.OrdenVenta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Orden">
        <section class="container text-light text-center mt-5">
            <h1>Órdenes de venta</h1>
            <div class="row bg-dark text-center rounded-2 p-2 headFiltro mt-3">
                <div class="col align-self-center">
                    <label>Filtro</label>
                </div>
                <div class="col">
                    <asp:DropDownList ID="FiltroOrden" runat="server" Class="Drop bg-dark text-light text-center p-2">
                        <asp:ListItem Selected="True" disabled="True"> Órdenes de venta </asp:ListItem>
                        <asp:ListItem>Liquidadas</asp:ListItem>
                        <asp:ListItem>Pendientes</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <article class="mt-5">
                <div class="bg-dark border text-center justify-content-center">
                    <asp:GridView ID="gvOrdenVenta" runat="server"></asp:GridView>
                </div>
            </article>
        </section>
    </div>
</asp:Content>
