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
    public partial class profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = F:\project\VL\VL\App_Data\Database1.mdf; Integrated Security = True");
        
        string today_date1 = "", time_now1 = "";

        
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Confirm_login())
            {
                today_date1 = DateTime.Now.ToString("MM/dd/yyyy");
                time_now1 = DateTime.Now.ToString("HH:mm:ss");
                con.Open();
                SqlCommand cmd = new SqlCommand("update Slot set status='Incomplete' where slot_date < '" + today_date1 + "' and status in('Upcoming','Ongoing') ", con);
                SqlCommand cmd1 = new SqlCommand("update Slot set status='Ongoing' where slot_date = '" + today_date1 + "' and status='Upcoming' ", con);
                cmd.ExecuteNonQuery();
                cmd1.ExecuteNonQuery();
                con.Close();

            }
            book_history.Visible = false;
            no_booking.Visible = false;
            book_current.Visible = false;
           
           
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
        protected void booking_Click(object sender, EventArgs e)
        {
            con.Open();
            today_date1 = DateTime.Now.ToString("MM/dd/yyyy");
            time_now1 = DateTime.Now.ToString("HH:mm:ss");
            SqlCommand book = new SqlCommand("select slot_id from Slot where slot_date='" + today_date1 + "' and status='Ongoing' ", con);
            if (book.ExecuteScalar() == null)
                no_booking.Visible = true;
            else
                book_current.Visible = true;
            con.Close();
          
        }

        protected void booking_history_Click(object sender, EventArgs e)
        {
            book_history.Visible = true;
        }
    }
}