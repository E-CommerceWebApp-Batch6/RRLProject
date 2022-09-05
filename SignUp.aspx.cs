using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Configuration.Provider;
using System.Xml.Linq;
using System.Drawing;
using System.EnterpriseServices.Internal;

namespace E_Cart_Online_Shopping
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
         
        }
        protected void txtSignUp_Click(object sender, EventArgs e)
        {
             
            if(isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings ["ECartOnlineShoppingDB"].ConnectionString ))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into Users(Username,Password,Email,Name,Usertype) Values('" + txtUname.Text + "','" + txtPass.Text + "','" + txtEmail.Text + "','" + txtName.Text + "','User')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('Registration Sucessfully Done'); </script>");
                    clr();
                    con.Close();
                    lblMsg.Text = "Registration Succesfully Done";
                    lblMsg.ForeColor = System.Drawing.Color.Green;

                }
                Response.Redirect("~/SignIn.aspx");

            }
            else
            {
                Response.Write("<script> alert('Registration Failed'); </script>");
                lblMsg.Text = "All fields are mandatory";
                lblMsg.ForeColor = System.Drawing.Color.Red;



            }

        }
 
        private bool isformvalid()
        {
           if(txtUname.Text=="")
            {
                Response.Write("<script> alert('username is not valid'); </script>");
                txtUname.Focus();
                return false;
            }
           else if(txtPass.Text=="")
           {
                Response.Write("<script> alert('Password is not valid'); </script>");
                txtPass.Focus();
                return false;
            }
           else if(txtPass.Text != txtCPass.Text)
           {
                Response.Write("<script> alert('Password and Confirm Password should be same'); </script>");
                txtCPass.Focus();
                return false;
            }
            else if (txtEmail.Text == "")
            {
                Response.Write("<script> alert('Email is not valid'); </script>");
                txtEmail.Focus();
                return false;
            }
            else if (txtName.Text == "")
            {
                Response.Write("<script> alert('Name is not valid'); </script>");
                txtName.Focus();
                return false;
            }

            return true;
        }
        private void clr()
        {
            txtName.Text = String.Empty;
            txtPass.Text = String.Empty;
            txtUname.Text = String.Empty;
            txtEmail.Text = String.Empty;
            txtCPass.Text = String.Empty;
        }
    }
}