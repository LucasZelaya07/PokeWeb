<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="PokemonLista.aspx.cs" Inherits="PokeWeb.PokemonLista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Pokemons' list</h1>
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <asp:Label Text="Fast filter" runat="server" />
                <asp:TextBox runat="server" ID="txtFiltro" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtFiltro_TextChanged" />
            </div>
        </div>
    
    <div class="col-6" style="display: flex; flex-direction: column; justify-content: flex-end;">
        <div class="mb-3">
            <asp:CheckBox Text="Advanced filter" ID="chkbxFiltroAvanzado" runat="server"
                AutoPostBack="true" OnCheckedChanged="chkbxFiltroAvanzado_CheckedChanged" />
        </div>
    </div>

    <%      if (FiltroAvanzado)
        {  %>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Field" ID="lblCampo" runat="server" />
                <asp:DropDownList runat="server" AutoPostBack="true" ID="ddlCampo" OnSelectedIndexChanged="ddlCampo_SelectedIndexChanged" CssClass="form-control">
                    <asp:ListItem Text="Nombre" />
                    <asp:ListItem Text="Tipo" />
                    <asp:ListItem Text="Numero" />
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Selection criteria" runat="server" />
                <asp:DropDownList runat="server" ID="ddlCriterio" CssClass="form-control">
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Filter" runat="server" />
                <asp:TextBox ID="txtFiltroAvanzado" CssClass="form-control" runat="server" />
            </div>
        </div>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="State" runat="server" />
                <asp:DropDownList runat="server" ID="ddlEstado" CssClass="form-control">
                    <asp:ListItem Text="Todos" />
                    <asp:ListItem Text="Activo" />
                    <asp:ListItem Text="Inactivo" />
                </asp:DropDownList>
            </div>
        </div>
        </div>
    <div class="row">
    <div class="col-3">
        <div class="mb-3">
            <asp:Button Text="Search" ID="btnBuscar" OnClick="btnBuscar_Click" CssClass="btn btn-primary" runat="server" />
        </div>
    </div>

    <%  } %>
        </div>
    <asp:ScriptManager runat="server" />
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <asp:GridView ID="gvPokemon" CssClass="table" AutoGenerateColumns="false" runat="server" DataKeyNames="Id"
                OnSelectedIndexChanged="gvPokemon_SelectedIndexChanged" OnPageIndexChanging="gvPokemon_PageIndexChanging"
                AllowPaging="true" PageSize="5">
                <Columns>
                    <asp:BoundField HeaderText="Name" DataField="Nombre" />
                    <asp:BoundField HeaderText="Number" DataField="Numero" />
                    <asp:BoundField HeaderText="Type" DataField="Tipo.Descripcion" />
                    <asp:CheckBoxField HeaderText="Active" DataField="Activo" />
                    <asp:CommandField HeaderText="Action" ShowSelectButton="true" SelectText="Select" />
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
    <a href="FormularioPokemon.aspx" class="btn btn-success">Add</a>
</asp:Content>
