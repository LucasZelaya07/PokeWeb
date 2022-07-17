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
                <asp:Button Text="Aceptar" ID="btnAceptar" OnClick="btnAceptar_Click" CssClass="btn btn-primary" runat="server" />
                <a href="PokemonLista.aspx">Cancelar</a>
                <asp:Button Text="Desactivar" ID="btnDesactivar" OnClick="btnDesactivar_Click" CssClass="btn btn-warning" runat="server" />
            </div>

        </div>
        <div class="col-6">
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripción</label>
                <asp:TextBox CssClass="form-control" TextMode="MultiLine" runat="server" ID="txtDescripcion" />
            </div>
            <asp:ScriptManager runat="server" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <label for="txtUrlImagen" class="form-label">UrlImagen</label>
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtUrlImagen"
                            AutoPostBack="true" OnTextChanged="txtUrlImagen_TextChanged" />
                    </div>
                    <asp:Image ImageUrl="https://vesaliusdental.com/wp-content/uploads/2016/10/orionthemes-placeholder-image.jpg"
                        runat="server" ID="imgPokemon" Width="60%" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <div class="row">
        <div class="col-6">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>

                    <div class="mb-3">
                        <asp:Button Text="Eliminar" ID="btnEliminar" CssClass="btn btn-danger" OnClick="btnEliminar_Click" runat="server" />
                    </div>
                    <% if (ConfirmaEliminacion)
                        {%>

                    <div class="mb-3">
                        <asp:CheckBox Text="Confirmar eliminación" ID="chkbxConfirmarEliminacion" runat="server" />
                        <asp:Button Text="Eliminar" ID="btnConfirmaEliminacion" OnClick="btnConfirmaEliminacion_Click" CssClass="btn btn-outside-danger" runat="server" />
                    </div>
                    <%} %>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

</asp:Content>
