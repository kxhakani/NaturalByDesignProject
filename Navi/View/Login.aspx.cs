﻿//PROG1210
//David Lopez

//Login page

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;


namespace Navi
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)//boolean - true if user is logged in, false otherwise
            {
                Response.Redirect("~/View/Welcome.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);
            IdentityUser user = manager.Find(txtUser.Text, txtPass.Text);

            if (user == null)
            {
                lblMessage.Text = "Username or password is incorrect.";
            }
            else
            {
                //sign the user in
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                authenticationManager.SignIn(userIdentity);

                Response.Redirect("~/View/Welcome.aspx");

            }

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View/Registration.aspx");
        }
    }
}