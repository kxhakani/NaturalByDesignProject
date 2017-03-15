using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Navi
{
    public partial class ClientSearch : System.Web.UI.Page
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
            ListBox1.Text = null;
            ListBox2.Text = null;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Text = null;
            ListBox1.Text = null;
            ListBox2.Text = null;
        }

        protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Visible = true;
        }
    }
}