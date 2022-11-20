<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PokeWeb.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row row-cols-1 row-cols-md-3 g-4">


        <asp:Repeater runat="server" ID="repRepeater">
            <ItemTemplate>
                <div class="col">
                    <div class="card h-100">
                        <img src="<%#Eval("UrlImagen")%>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                            <a href="Detalle.aspx?id=<%#Eval("Id")%>">Detail</a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
