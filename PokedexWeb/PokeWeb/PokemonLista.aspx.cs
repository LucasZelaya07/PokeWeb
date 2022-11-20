using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace PokeWeb
{
    public partial class PokemonLista : System.Web.UI.Page
    {
        public bool FiltroAvanzado { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            FiltroAvanzado = chkbxFiltroAvanzado.Checked;
            if (!IsPostBack)
            {
                PokemonNegocio negocio = new PokemonNegocio();
                Session.Add("ListaPokemon", negocio.ListarConSP());
                gvPokemon.DataSource = Session["ListaPokemon"];
                gvPokemon.DataBind();
            }
        }

        protected void gvPokemon_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Id = gvPokemon.SelectedDataKey.Value.ToString();
            Response.Redirect("FormularioPokemon.aspx?id=" + Id);
        }

        protected void gvPokemon_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPokemon.PageIndex = e.NewPageIndex;
            gvPokemon.DataBind();
        }

        protected void txtFiltro_TextChanged(object sender, EventArgs e)
        {
            List<Pokemon> lista = (List<Pokemon>)Session["ListaPokemon"];
            List<Pokemon> ListaFiltrada = lista.FindAll(x => x.Nombre.ToUpper().Contains(txtFiltro.Text.ToUpper()));
            gvPokemon.DataSource = ListaFiltrada;
            gvPokemon.DataBind();
        }

        protected void chkbxFiltroAvanzado_CheckedChanged(object sender, EventArgs e)
        {
            FiltroAvanzado = chkbxFiltroAvanzado.Checked;
            txtFiltro.Enabled = !FiltroAvanzado;
        }


        protected void ddlCampo_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlCriterio.Items.Clear();
            if (ddlCampo.SelectedItem.ToString() == "Numero")
            {
                ddlCriterio.Items.Add("Mayor a");
                ddlCriterio.Items.Add("Menor a");
                ddlCriterio.Items.Add("Igual a");
            }
            else if (ddlCampo.SelectedItem.ToString() == "Nombre")
            {
                ddlCriterio.Items.Add("Empieza con");
                ddlCriterio.Items.Add("Termina con");
                ddlCriterio.Items.Add("Contiene ");
            }
            else
            {
                ddlCriterio.Items.Add("Fire");
                ddlCriterio.Items.Add("Water");
                ddlCriterio.Items.Add("Grass");
                ddlCriterio.Items.Add("Electric");
                ddlCriterio.Items.Add("Fighting");
                ddlCriterio.Items.Add("Flying");

            }
            
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                PokemonNegocio negocio = new PokemonNegocio();
                gvPokemon.DataSource = negocio.filtrar(ddlCampo.SelectedItem.ToString(),
                ddlCriterio.SelectedItem.ToString(),
                txtFiltroAvanzado.Text,
                ddlEstado.SelectedItem.ToString());
                gvPokemon.DataBind();
            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
            }
        }
    }
}