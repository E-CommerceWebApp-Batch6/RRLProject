using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace E_Cart_Online_Shopping
{
    public partial class RecoverPassword : System.Web.UI.Page
    {
        String GUIDvalue;
        DataTable dt = new DataTable();
        int UserID;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ECartOnlineShoppingDB"].ConnectionString))
            {
                con.Open();
                GUIDvalue = Request.QueryString["ID"];
                if(GUIDvalue!=null)
                {
                    SqlCommand cmd = new SqlCommand("Select * from ForgotPass where ID=@Id", con);
                    cmd.Parameters.AddWithValue("@Id", GUIDvalue);

                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                    if(dt.Rows.Count!=0)
                    {
                        UserID = Convert.ToInt32(dt.Rows[0][1]);
                    }

                    else
                    {
                        lblmsg.Text = "Your Password Reset Link is Expired or Invalid.....try again";
                        lblmsg.ForeColor = System.Drawing.Color.Red;

                    }
                    
                    UserID = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {
                    Response.Redirect("~/Default.aspx");
                }


            }
            if (!IsPostBack)
            {
                if(dt.Rows.Count!=0)
                {
                    txtConfirmPass.Visible = true;
                    txtNewPass.Visible = true;
                    lblNewPassword.Visible = true;
                    lblConfirmPass.Visible = true;
                    btnResetPass.Visible = true;
                }
                else
                {
                    lblmsg.Text = "Your Password Reset Link is Expired or Invalid....try again";
                    lblmsg.ForeColor = System.Drawing.Color.Red;

                }
            }
        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            if (txtNewPass.Text!="" && txtConfirmPass.Text !="" && txtNewPass.Text==txtConfirmPass.Text)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ECartOnlineShoppingDB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Update Users set Password=@p where UserID=@UserID", con);
                    cmd.Parameters.AddWithValue("@p", txtNewPass.Text);
                    cmd.Parameters.AddWithValue("@UserID", UserID);
                    cmd.ExecuteNonQuery();



                    SqlCommand cmd2 = new SqlCommand("delete from ForgotPass where UserID='" + UserID + "'", con);
                    cmd2.ExecuteNonQuery();
                    Response.Write("<script> alert('Password Reset Successfully done'); </script>");
                    Response.Redirect("~/SignIn.aspx");
                }
            }
        }
    }
}