using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Navi
{
    public partial class DailyReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)//boolean - true if user is logged in, false otherwise
            {
                Response.Redirect("~/View/Login.aspx");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                double quan = Convert.ToDouble(TextBox1.Text);
                double unitCost = Convert.ToDouble(TextBox2.Text);
                string display = "";
                double estCost = quan * unitCost;
                display = Convert.ToString(estCost);
                Label7.Text = display;
                Label13.Text = "Information entered succesfully";
            }
            else
            {
                Label13.Text = "Please enter a quantity and unit cost";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text != "" && TextBox4.Text != "")
            {
                double hours = Convert.ToDouble(TextBox3.Text);
                double costHr = Convert.ToDouble(TextBox4.Text);
                string display = "";
                double estCost = hours * costHr;
                display = Convert.ToString(estCost);
                Label11.Text = display;
                Label15.Text = " Information entered successfully";
            }
            else
            {
                Label15.Text = "Please enter amount of hours and cost per hour";
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime date = Calendar1.SelectedDate;
            string display = Convert.ToString(date.ToLongDateString());

            Label8.Text = display;
        }
    }

}