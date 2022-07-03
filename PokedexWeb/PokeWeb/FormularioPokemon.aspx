<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="FormularioPokemon.aspx.cs" Inherits="PokeWeb.FormularioPokemon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-6">

            <div class="mb-3">
                <label for="txtID" class="form-label">ID</label>
                <asp:TextBox CssClass="form-control" TextMode="Number" ID="txtID" runat="server" />
            </div>
            <div class="mb-3">
                <label for="txtNombre" class="form-label">Nombre</label>
                <asp:TextBox CssClass="form-control" runat="server" ID="txtNombre" />
            </div>
            <div class="mb-3">
                <label for="txtNumero" class="form-label">Numero</label>
                <asp:TextBox CssClass="form-control" TextMode="Number" ID="txtNumero" runat="server" />
            </div>
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripción</label>
                <asp:TextBox CssClass="form-control" TextMode="MultiLine" runat="server" ID="txtDescripcion" />
            </div>
            <div class="mb-3">
                <label for="ddlTipo">Tipo</label>
                <asp:DropDownList runat="server" ID="ddlTipo" CssClass="btn btn-info dropdown-toggle">
                    <asp:ListItem Text="Fuego" />
                    <asp:ListItem Text="Planta" />
                    <asp:ListItem Text="Electrico" />
                    <asp:ListItem Text="Lucha" />
                    <asp:ListItem Text="Agua" />
                    <asp:ListItem Text="Volador" />
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="ddlDebilidad">Debilidad</label>
                <asp:DropDownList ID="ddlDebilidad" CssClass="btn btn-success dropdown-toggle" runat="server">
                    <asp:ListItem Text="Fuego" />
                    <asp:ListItem Text="Planta" />
                    <asp:ListItem Text="Electrico" />
                    <asp:ListItem Text="Lucha" />
                    <asp:ListItem Text="Agua" />
                    <asp:ListItem Text="Volador" />
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="txtUrlImagen" class="form-label">UrlImagen</label>
                <asp:TextBox CssClass="form-control" runat="server" ID="txtUrlImagen" />
            </div>
            <a href="PokemonLista.aspx" class="btn btn-success">Aceptar</a>
            <a href="Default.aspx">Cancelar</a>
        </div>
    </div>
</asp:Content>
