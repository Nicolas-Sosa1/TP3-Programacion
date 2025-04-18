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

        //funcion reutilizable para setear la longitud maxima de distintos campos.
        protected bool esLongitudValida(string texto, int maximo)
        {
            if (texto.Length > maximo) { return false; }
            else { return true; }
        }
        //custom validator para setear el limite de caracteres
        //en 20 a la contraseña.
        protected void customCont1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = esLongitudValida(args.Value.Trim(), 20);
        }
        //custom validator para setear el limite de caracteres
        //en 20 en repetir contraseña.
        protected void customCont2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = esLongitudValida(args.Value.Trim(), 20);
        }
    }
}