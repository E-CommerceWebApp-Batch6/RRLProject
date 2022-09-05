using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Net.Mail;
using System.Net;

namespace E_Cart_Online_Shopping
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        public string Password { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ECartOnlineShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Users where Email=@Email", con);
                cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int UserID = Convert.ToInt32(dt.Rows[0][0] );
                    SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(ID,UserID,RequestDateTime) values('" + myGUID + "','" + UserID + "',GETDATE())", con);
                    cmd1.ExecuteNonQuery();


                    //Send Reset Link via Email
                    String ToEmailAddress = dt.Rows[0][3].ToString();
                    String Username = dt.Rows[0][1].ToString();

                    String EmailBody ="Hi," +Username+ ",<br/><br/>Click the link below given to reset the password<br/>http://localhost:58934/RecoverPassword.aspx?ID="+myGUID ;

                    MailMessage PassRecMail = new MailMessage("nemipes96@gmail.com",ToEmailAddress);

                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml =true;
                    PassRecMail.Subject = "Reset Password";

                    //SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                    //SMTP.Credentials = new NetworkCredential("deepikabadiger353@gmail.com", "yynkwelsnmwjjjsb");
                    //{
                    //    Username = "deepikabadiger353@gmail.com";
                    //    Password = "yynkwelsnmwjjjsb";


                    //};
                    //SMTP.EnableSsl = true;
                    //SMTP.Send(PassRecMail);

                    ////----------
                    using (SmtpClient client=new SmtpClient())
                    {
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = new NetworkCredential("nemipes96@gmail.com", "kpkwpegosfttvoxv");
                        client.Host = "smtp.gmail.com";
                        client.Port = 587;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;

                        client.Send(PassRecMail);
                    
                    
                    
                    }

                    ///------------
                  

                    lblResetPassMsg.Text = "Reset Link send! Check your email for reset password";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                    txtEmailID.Text = string.Empty;
                    txtEmailID.Focus();
                    
                }
                else
                {
                    lblResetPassMsg.Text = "OOps! This Email Does not Exist....Try again";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Red;

                }



            }

        }
    }
}