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
    public partial class bookslot : System.Web.UI.Page
    {
         Int32 bookingid;
        Int32 experimentId;
         String date;
        Int32 userId;
        
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = F:\project\VL\VL\App_Data\Database1.mdf; Integrated Security = True");

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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Confirm_login())
            {
                experimentId = Convert.ToInt32(Session["EXP"].ToString());
                userId = Convert.ToInt32(Session["USERID"].ToString());
                Label1.Visible = false;
                if (!IsPostBack)
                {
                    Calendar1.SelectedDate = DateTime.Now.Date;
                    date = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day;
                    findAvailableSlot();
                    RadioButtonList1.Visible = true;
                }
            }

        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            RadioButtonList1.ClearSelection();
            date = Calendar1.SelectedDate.Year+"-"+Calendar1.SelectedDate.Month+"-"+Calendar1.SelectedDate.Day;
            findAvailableSlot();
            RadioButtonList1.Visible = true;
        }
        private void findAvailableSlot()
        {
            int count = 0;
           // String mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=F:\\project\\VL\\VL\\App_Data\\Database1.mdf;Integrated Security=True";
            String myquery = "select slot_time from Slot where slot_date='"+date+"' and exp_id="+experimentId+"";
            // SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = F:\project\VL\VL\App_Data\Database1.mdf; Integrated Security = True");
           // con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    RadioButtonList1.Items.FindByValue(dr["slot_time"].ToString()).Attributes.Add("style", "display:none");
                    count++;
                }
                if (count>=7)
                {
                    Label1.Text = "No Slots Available on Selected Date";
                    Label1.Visible = true;
                    // Label1.Text = count;
                    Button1.Visible = false;
                }
                else if(count<7)
                    Button1.Visible = true;
            }
            else
            {
                Button1.Visible = true;
            }
            con.Close();
        }

        public void GenerateBookingID()
        {
            String myquery = "select slot_id from Slot";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                bookingid = 50001;

            }
            else
            {
                //String mycon1 = "Data Source=JARVIS\\SQLEXPRESS;Initial Catalog=VL;Integrated Security=True";
                con.Open();
               // SqlConnection scon1 = new SqlConnection(mycon1);
                String myquery1 = "select max(slot_id) from Slot";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = con;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                bookingid = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());

                bookingid = bookingid + 1;
                con.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string status = "Upcoming";
            date = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day;
                if (Page.IsValid)
                {
                    GenerateBookingID();
                    String updatepass = "insert into Slot(slot_id,slot_date,slot_time,user_id,exp_id,status) values(" + bookingid + ",'" + date + "','" + RadioButtonList1.SelectedItem.Value + "'," + userId + "," + experimentId + ",'" + status + "')";         
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = updatepass;
                    cmd1.Connection = con;
                    cmd1.ExecuteNonQuery();
                    RadioButtonList1.ClearSelection();
                    findAvailableSlot();
                    RadioButtonList1.Visible = true;
                    Response.Redirect("lab.aspx");
                }

        }
       
    }
}