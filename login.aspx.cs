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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = F:\project\VL\VL\App_Data\Database1.mdf; Integrated Security = True");
        int temp_user=0;
        protected void Page_Load(object sender, EventArgs e)
        {
            incorrect.Visible = false;
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            try
            {
                string user1 = username.Text;
                string pass = password.Text;
                con.Open();
                String myquery = "select user_id from [User] where email='" + user1 + "' and password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(myquery, con);
                if (cmd.ExecuteScalar() != null)
                    temp_user = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                /* SqlDataAdapter da = new SqlDataAdapter();
                 da.SelectCommand = cmd;
                 DataSet ds = new DataSet();
                 da.Fill(ds);
                 if (ds.Tables[0].Rows.Count > 0)*/
                if (temp_user != 0)
                {
                    incorrect.Visible = true;
                    Session["USERID"] = temp_user;
                    //incorrect.Text = Session["USERID"].ToString();
                    Response.Redirect("course1.aspx");
                }
                else
                {
                    incorrect.Visible = true;
                    incorrect.Text = "Incorrect username and password";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());

            }
        }

       
    }
}