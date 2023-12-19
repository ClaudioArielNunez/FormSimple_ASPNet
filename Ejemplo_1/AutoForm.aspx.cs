using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;//Agregamos Dominio

namespace Ejemplo_1
{
    public partial class AutoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlColores.Items.Add("Negro");
            ddlColores.Items.Add("Blanco");
            ddlColores.Items.Add("Rojo");

            //chequeamos el estado del id q nos envian como parametro
            if (Request.QueryString["id"]!= null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                //con este id voy a buscar el objeto, que esta en la lista, que esta en la Session
                List<Auto> temporal = (List<Auto>)Session["listaAutos"];
                //Buscamos el id y lo guardamos
                Auto seleccionado = temporal.Find(x => x.Id == id);
                //precargamos los datos en el formulario
                txtId.Text = seleccionado.Id.ToString();
                txtId.ReadOnly = true;
                txtModelo.Text = seleccionado.Modelo;
                txtDescripcion.Text = seleccionado.Descripcion;
                ddlColores.Text = seleccionado.Color.ToString();
                txtFecha.Text = seleccionado.Fecha.ToString("yyyy-MM-dd");
                chkUsado.Checked = seleccionado.Usado;
               
                if(seleccionado.Importado == true)
                {
                    rdbImportado.Checked = true;
                    rdbNacional.Checked = false;
                }
                else
                {
                    rdbImportado.Checked = false;
                    rdbNacional.Checked = true;
                }
            }
        }



        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Auto a = new Auto();
            a.Id = int.Parse(txtId.Text);
            a.Modelo = txtModelo.Text;
            a.Descripcion = txtDescripcion.Text;
            a.Color = ddlColores.SelectedValue;
            a.Fecha = DateTime.Parse(txtFecha.Text);//como es un txt lo parseamos a Datetime
            a.Usado = chkUsado.Checked;
            //forma de conseguir esta propiedad
            if (rdbImportado.Checked) a.Importado = true;
            else if (rdbNacional.Checked) a.Importado = false;

            //Recuperamos la lista de la Session, este devuelve un object, hay q transformarlo
            //1)forma: llamamos session, parseamos y agregamos
            //((List<Auto>)Session["listaAutos"]).Add(a);

            //2)forma:creamos una lista auxiliar
            List<Auto> temporal = (List<Auto>)Session["listaAutos"];
            temporal.Add(a);

            Response.Redirect("Default.aspx");//volvemos a la pagina


        }
    }
}