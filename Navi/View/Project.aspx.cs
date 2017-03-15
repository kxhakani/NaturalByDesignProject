using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Navi
{
    public partial class Project : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                GridView1.Visible = true;

                if (!User.Identity.IsAuthenticated)//boolean - true if user is logged in, false otherwise
                {
                    Response.Redirect("~/View/Login.aspx");
                }
            }
        }
        protected virtual void OnClick(ImageClickEventArgs e)
        {

        }
        
    }
}