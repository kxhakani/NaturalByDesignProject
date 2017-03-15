using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Navi
{
    public partial class DesignBudget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtBidDate.Text = "2001-01-01";
            txtSite.Text = "London";
            txtEstCostTo.Text = "10000";
            txtEstCostF.Text = "0";
            if (!User.Identity.IsAuthenticated)//boolean - true if user is logged in, false otherwise
            {
                Response.Redirect("~/View/Login.aspx");
            }
        }
    }
}