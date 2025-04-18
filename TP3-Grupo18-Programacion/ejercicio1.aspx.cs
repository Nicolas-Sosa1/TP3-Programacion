using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_Grupo18_Programacion
{
    public partial class ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            string nuevaLocalidad = txtLocalidad.Text.Trim().ToLower();

            bool existe = false;

            foreach (ListItem item in ddlLocalidades.Items)
            {
                if (item.Text.ToLower() == nuevaLocalidad)
                {
                    existe = true;
                    break;
                }
            }

            if (existe==false)
            {
                ddlLocalidades.Items.Add(new ListItem(nuevaLocalidad, nuevaLocalidad));

                lblExito.Text = "Se agregó una nueva Localidad.";
            }
            else
            {
                lblExito.Text = "La localidad ya existe.";
            }

            txtLocalidad.Text = "";

        }
    }
}