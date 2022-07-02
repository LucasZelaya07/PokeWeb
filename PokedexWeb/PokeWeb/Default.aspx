<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PokeWeb.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Bienvenido a mi sitio pokemon</h1>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%--        <%
            foreach (dominio.Pokemon poke in ListaPokemon)
            {
        %>
             <div class="col">
                <div class="card h-100">
                  <img src="<%:poke.UrlImagen %>" class="card-img-top" alt="...">
                  <div class="card-body">
                     <h5 class="card-title"><%:poke.Nombre %></h5>
                     <p class="card-text"><%:poke.Descripcion %></p>
                      <a href="Detalle.aspx?id=<%:poke.Id %>">Ver detalle</a>
                  </div>
               </div>
             </div>
        <%   } %>--%>

        <asp:Repeater runat="server" ID="repRepeater">
            <ItemTemplate>
                <div class="col">
                    <div class="card h-100">
                        <img src="<%#Eval("UrlImagen")%>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                            <a href="Detalle.aspx?id=<%#Eval("Id")%>">Ver detalle</a>
                            <asp:Button Text="Ejemplo" CssClass="btn btn-primary" ID="btnEjemplo" OnClick="btnEjemplo_Click" runat="server" CommandArgument='<%#Eval("Id")%>' CommandName="PokemonId" />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
