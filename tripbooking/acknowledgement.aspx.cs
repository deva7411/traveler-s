using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tripbooking
{
    public partial class acknowledgement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lbl_name.Text = (string)Session["name"];
                lbl_contact.Text = (string)Session["contact"];
                lbl_destination.Text = (string)Session["destination"];
                lbl_viewpoints.Text = (string)Session["viewpoints"];
                lbl_members.Text = (string)Session["members"];
                lbl_days.Text = (string)Session["days"];
                
                lbl_total_cost.Text = (string)Session["cost"];
            }
        }
    }
}