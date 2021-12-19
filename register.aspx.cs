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
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = F:\project\VL\VL\App_Data\Database1.mdf; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }

        private bool check_emailExist(string email)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from [User] where email='" + email + "'", con);
            int existemail = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (existemail == 1)
            {
                exemail.Visible = true;
                return true;
            }
            else
                return false;
            
        }

        private bool check_mobileExist(string mobile)
        {
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select count(*) from [User] where mobile=" + mobile + "", con);
            int existmobile = Convert.ToInt32(cmd2.ExecuteScalar().ToString());
            con.Close();
            if (existmobile == 1)
            {
                exmobile.Visible = true;
                return true;
            }
            else
                return false;

        }
        protected void registerbtn_Click(object sender, EventArgs e)
        {
            
            string email = regemail.Text;
            string mobile = regphone.Text;
            /*flag = 0;


            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from [User] where email='" + email + "'", con);
            int existemail = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            SqlCommand cmd2 = new SqlCommand("select count(*) from [User] where mobile=" + mobile + "", con);
            int existmobile = Convert.ToInt32(cmd2.ExecuteScalar().ToString());
            con.Close();
           
            if (existmobile == 1)
            {
                flag = 1;
                exmobile.Visible = true;
            }
            if(flag!=1)*/
            if (!check_emailExist(email) && !check_mobileExist(mobile))
            {
                try
                {
                    con.Open();
                    String register = "insert into [User] (user_name,email,gender,mobile,password,college,dob) " +
                        "values('" + name.Text + "','" + regemail.Text + "','" + gender.SelectedValue + "'," + Convert.ToDouble(regphone.Text.ToString()) + "," +
                        " '" + regpassword.Text + "', '" + collegename.Text + "','" + dob.Text + "')";
                    SqlCommand cmd3 = new SqlCommand(register, con);
                    cmd3.ExecuteNonQuery();
                    Response.Redirect("login.aspx");
                }
                catch(Exception ex)
                {
                    Response.Write("Error:" +ex.ToString());

                }
            }
        }

        protected void regemail_TextChanged(object sender, EventArgs e)
        {
            exemail.Visible = false;
        }

        protected void regphone_TextChanged(object sender, EventArgs e)
        {
            exmobile.Visible = false;
        }
    }
}