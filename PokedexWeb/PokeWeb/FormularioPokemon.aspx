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
                <label for="txtNombre" class="form-label">Name</label>
                <asp:TextBox CssClass="form-control" runat="server" ID="txtNombre" />
            </div>
            <div class="mb-3">
                <label for="txtNumero" class="form-label">Number</label>
                <asp:TextBox CssClass="form-control" TextMode="Number" ID="txtNumero" runat="server" />
            </div>
            <div class="mb-3">
                <label for="ddlTipo">Type</label>
                <asp:DropDownList runat="server" ID="ddlTipo" CssClass="btn btn-info dropdown-toggle">
                    <asp:ListItem Text="Fire" />
                    <asp:ListItem Text="Grass" />
                    <asp:ListItem Text="Electric" />
                    <asp:ListItem Text="Fighting" />
                    <asp:ListItem Text="Water" />
                    <asp:ListItem Text="Flying" />
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="ddlDebilidad">Weaknesses</label>
                <asp:DropDownList ID="ddlDebilidad" CssClass="btn btn-success dropdown-toggle" runat="server">
                    <asp:ListItem Text="Fire" />
                    <asp:ListItem Text="Grass" />
                    <asp:ListItem Text="Electric" />
                    <asp:ListItem Text="Fighting" />
                    <asp:ListItem Text="Water" />
                    <asp:ListItem Text="Flying" />
                </asp:DropDownList>

            </div>
            <div class="mb-3">
                <asp:Button Text="Accept" runat="server" ID="btnAceptar" OnClick="btnAceptar_Click" CssClass="btn btn-primary" />
                <asp:Button Text="Deactivate" ID="btnDesactivar" OnClick="btnDesactivar_Click" CssClass="btn btn-warning" runat="server" />
                <a href="PokemonLista.aspx">Cancel</a>
            </div>

        </div>
        <div class="col-6">
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Description</label>
                <asp:TextBox CssClass="form-control" TextMode="MultiLine" runat="server" ID="txtDescripcion" />
            </div>
            <asp:ScriptManager runat="server" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <label for="txtUrlImagen" class="form-label">Url Image</label>
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
                        <asp:Button Text="Eliminate" ID="btnEliminar" CssClass="btn btn-danger" OnClick="btnEliminar_Click" runat="server" />
                    </div>
                    <% if (ConfirmaEliminacion)
                        {%>

                    <div class="mb-3">
                        <asp:CheckBox Text="Confirm deletion" ID="chkbxConfirmarEliminacion" runat="server" />
                        <asp:Button Text="Eliminate" ID="btnConfirmaEliminacion" OnClick="btnConfirmaEliminacion_Click" CssClass="btn btn-outside-danger" runat="server" />
                    </div>
                    <%} %>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

</asp:Content>
