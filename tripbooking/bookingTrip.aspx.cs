using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Web.DynamicData;
using System.Data.SqlClient;
using System.Data;

namespace tripbooking
{
    public partial class bookingTip : System.Web.UI.Page
    {
        public static string constr = WebConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                vihicle_display();
                txtusername.Text = (string)Session["username"];
                txtusernumber.Text = (string)Session["usernumber"];

                grid_route();
                

                from();
                dddestination.Items.Insert(0, "-Select Destination--");                              
                
            }

            Session["name"] = txtusername.Text;
            Session["contact"] = txtusernumber.Text;
            Session["destination"] = dddestination.SelectedValue;
            Session["viewpoints"] = txtviewpoints.Text;
            Session["members"] = txtmembers.Text;
            Session["days"] = txtno_ofdays.Text;
            //Session["dates"] = txtfrom.Text + txtto.Text;
            Session["cost"] = lbl_tc.Text;


            btnsubmit.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into fix_map " + "(destination,viewpoints,no_ofpeople,no_days,selected_vehicle,username,contactnumber,total_cost)values(@destination,@viewpoints,@no_ofpeople,@no_days,@selected_vehicle,@username,@contactnumber,@total_cost)", con);
            cmd.Parameters.AddWithValue("@destination", dddestination.SelectedValue);
            cmd.Parameters.AddWithValue("@viewpoints", txtviewpoints.Text);
            cmd.Parameters.AddWithValue("@no_ofpeople", txtmembers.Text);
            cmd.Parameters.AddWithValue("@total_cost", lbl_tc.Text);
            cmd.Parameters.AddWithValue("@no_days", txtno_ofdays.Text);
            cmd.Parameters.AddWithValue("@selected_vehicle", ddselect_vehicle.SelectedValue);
            //cmd.Parameters.AddWithValue("@fromdate", txtfrom.Text);
            //cmd.Parameters.AddWithValue("@todate", txtto.Text);
            cmd.Parameters.AddWithValue("username", txtusername.Text);
            cmd.Parameters.AddWithValue("contactnumber", txtusernumber.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("acknowledgement.aspx");
            //Response.Write("<script>alert('Successfully data submited')</script>");

          

        }

        void vihicle_display()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from vehicels", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            ddselect_vehicle.DataSource = dt;
            ddselect_vehicle.DataTextField = "v_type";
            ddselect_vehicle.DataValueField = "v_type";
            ddselect_vehicle.DataBind();

            ListItem select_v = new ListItem("Select Vehicel", "Select Vehicel");
            select_v.Selected = true;
            ddselect_vehicle.Items.Insert(0, select_v);
            con.Close();
        }
        
        void from()
        {
            using(SqlConnection con=new SqlConnection(constr))
            {
                using(SqlCommand cmd= new SqlCommand("select * from routepayment",con))
                {
                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    ddlfrom.DataSource = dt;
                    ddlfrom.DataTextField = "r_from";
                    ddlfrom.DataValueField = "r_from";
                    ddlfrom.DataBind();

                    ddlfrom.Items.Insert(0, "--Select From--");
                }
            }
        }
        //void destination()
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select * from routepayment", con);
        //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    sda.Fill(dt);
        //    cmd.ExecuteNonQuery();
        //    dddestination.DataSource = dt;
        //    dddestination.DataTextField = "r_to";
        //    dddestination.DataValueField = "r_to";
        //    dddestination.DataBind();
        //    dddestination.Items.Insert(0, "-Select Destination--");
        //    con.Close();
        //}

        void grid_route()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from routepayment", con);
            
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gdroutes.DataSource = dt;
            gdroutes.DataBind();
            cmd.ExecuteNonQuery();
            con.Close();

        }

      
        //void totalcost()
        //{
        //    int cost;
        //    int members;
        //    int days;
        //    int total;
        //    cost = int.Parse(txtcost.Text);
        //    members = int.Parse(txtmembers.Text);
        //    days = int.Parse(lbltotal_days.Text);
        //    total = cost * members * days;
        //    lblto.Text = total.ToString();
            
        //}
        //void totalcost()
        //{
        //    int cost, members, days;

        //    // Try to parse all inputs safely
        //    bool isCostValid = int.TryParse(txtcost.Text, out cost);
        //    bool isMembersValid = int.TryParse(txtmembers.Text, out members);
        //    bool isDaysValid = int.TryParse(lbltotal_days.Text, out days);

        //    if (isCostValid && isMembersValid && isDaysValid)
        //    {
        //        int total = cost * members * days;
        //        lbl_tc.Text = total.ToString();
        //    }
        //    else
        //    {
        //        lbl_tc.Text = "Please enter valid numbers for cost, members, and days.";
        //    }
        //}
        

        void cal_fare()
        {
            int cost;
            int members;
            int days;
            int total;

            cost = int.Parse(txtcost.Text);
            members = int.Parse(txtmembers.Text);
            days = int.Parse(txtno_ofdays.Text);
            total = cost * members * days;
            lbl_tc.Text = total.ToString();
        }


        

        protected void checkbox_payment_CheckedChanged(object sender, EventArgs e)
        {
            if(checkbox_payment.Checked)
            {
                btnsubmit.Visible = true;
            }
        }

        protected void txtno_ofdays_TextChanged(object sender, EventArgs e)
        {
            cal_fare();
        }

        protected void ddlfrom_SelectedIndexChanged(object sender, EventArgs e)
        {
           // destination();
            con.Open();
            SqlCommand cmd = new SqlCommand(" select r_to from routepayment where r_from=@r_from ", con);
            cmd.Parameters.AddWithValue("@r_from", ddlfrom.SelectedValue);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            dddestination.DataSource = dt;
            dddestination.DataTextField = "r_to";
            dddestination.DataValueField = "r_to";
            dddestination.DataBind();
            dddestination.Items.Insert(0, "-Select Destination--");
            con.Close();
        }

        protected void dddestination_SelectedIndexChanged(object sender, EventArgs e)
        {
            using(SqlConnection con= new SqlConnection(constr))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select  r_payment from routepayment where  r_from=@r_from and r_to=@r_to ", con);
                cmd.Parameters.AddWithValue("@r_from", ddlfrom.SelectedValue);
                cmd.Parameters.AddWithValue("@r_to", dddestination.SelectedValue);

                object result = cmd.ExecuteScalar();
                if(result != null)
                {
                    txtcost.Text = result.ToString();
                }
                else
                {
                    txtcost.Text = "No";
                }
            }
        }

       

        

       
     



       

        

       

        

       
        

    }

}