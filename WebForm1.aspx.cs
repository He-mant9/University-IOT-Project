using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace VL
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Confirm_login();
                //selected_experiment.ClearSelection();
        }

        private bool Confirm_login()
        {
            if (Session["USERID"] == null)
            {
                Response.Write("<script>" +
                    "var conf =confirm('Please Sign In to continue');if(conf==true)window.location = 'login.aspx';if(conf==false)window.location='course1.aspx';" +
                    "</script>");
                return false;
            }
            else
            {
                return true;
            }
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            Session["EXP"] = selected_experiment.SelectedValue;
            Response.Redirect("bookslot.aspx");
        }

        protected void clear_Click(object sender, EventArgs e)
        {
            selected_experiment.ClearSelection();

        }
    }
}