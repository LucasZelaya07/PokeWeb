using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;

namespace PokeWeb
{
    public partial class PokemonLista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            gvPokemon.DataSource = negocio.ListarConSP();
            gvPokemon.DataBind();
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
    }
}