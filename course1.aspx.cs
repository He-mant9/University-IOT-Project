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
    public partial class course1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = F:\project\VL\VL\App_Data\Database1.mdf; Integrated Security = True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Session["USERID"] != null)
            {
                logout.Visible = true;
                profile.Visible = true;
            }
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
                return true;
        }
        protected void msc_electronics_Click(object sender, EventArgs e)
        {
            if (Confirm_login())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select course_id from Course where course_name ='" + msc_electronics.Text + "'", con);
                Session["COURSE"] = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                Response.Redirect("Webform1.aspx");
                //Button4.Text = Session["COURSE"].ToString();
            }
        }   
    }
}