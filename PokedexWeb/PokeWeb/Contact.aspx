<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="PokeWeb.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-2"></div>
        <div class="col">
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
            </div>
             <div class="mb-3">
                 <label class="form-label">Subject</label>
                 <asp:TextBox runat="server" ID="txtAsunto" CssClass="form-control" />
            </div>
             <div class="mb-3">
                 <label class="form-label">Message</label>
                 <asp:TextBox runat="server" TextMode="MultiLine" ID="txtMensaje" CssClass="form-control" />
            </div>
            <asp:Button Text="Send" ID="btnEnviar" OnClick="btnEnviar_Click" CssClass="btn btn-primary" runat="server" />
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
