using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Cart_Online_Shopping
{
    public partial class AdminMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnAdminlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignUp.aspx");
            Session["Username"] = null;

        }

    }
}