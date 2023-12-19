using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio; //incluimos la referencia

namespace Ejemplo_1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            AutoNegocio negocio = new AutoNegocio();
            //llamo a la lista con el ID q le pusimos a la DataGreedView
            dgvAutos.DataSource = negocio.listar();// establece la fuente de datos  
            dgvAutos.DataBind();//Este método se utiliza para enlazar los datos de la fuente 
            */

            if (Session["listaAutos"] == null)//Si esta vacia...
            {
                AutoNegocio negocio = new AutoNegocio();
                Session.Add("listaAutos", negocio.listar());//guardamos en Session la lista
            }
            dgvAutos.DataSource = Session["listaAutos"];
            dgvAutos.DataBind();

        }
        //Nos genera el evento para seleccionar en el dgv, se dispara cuando clickeamos el enlace
        protected void dgvAutos_SelectedIndexChanged(object sender, EventArgs e)
        {
            var algo = dgvAutos.SelectedRow.Cells[0].Text; //variable dinamica(sin tipo), me trae el contenido
            var id = dgvAutos.SelectedDataKey.Value.ToString(); //seleccione la dataKey
            //quiero navegar al formulario y ver los datos de ese id, envio ese parametro
            Response.Redirect("AutoForm.aspx?id=" + id);
        }
    }
}