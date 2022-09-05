using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;


namespace E_Cart_Online_Shopping
{
    public partial class AddProduct : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["ECartOnlineShoppingDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBrand();
                BindCategory();
                BindGender();
                
            }
        }

        private void BindCategory()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblCategory", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlCategory.DataSource = dt;
                    ddlCategory.DataTextField = "CatName";
                    ddlCategory.DataValueField = "CatID";
                    ddlCategory.DataBind();
                    ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));

                }


            }
        }

        private void BindGender()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblGender with(nolock)", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlGender.DataSource = dt;
                    ddlGender.DataTextField = "GenderName";
                    ddlGender.DataValueField = "GenderID";
                    ddlGender.DataBind();
                    ddlGender.Items.Insert(0, new ListItem("-Select-", "0"));

                }


            }
        }

       



        private void BindBrand()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {

                using (SqlCommand cmd = new SqlCommand("select * from tblBrands", con))
                {
                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        ddlBrand.DataSource = dt;
                        ddlBrand.DataTextField = "Name";
                        ddlBrand.DataValueField = "BrandID";
                        ddlBrand.DataBind();
                        ddlBrand.Items.Insert(0, new ListItem("-Select-", "0"));

                    }
                }


            }

        }




        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("sp_InsertProduct", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PName",txtProductName.Text);
                cmd.Parameters.AddWithValue("@PPrice",txtPrice.Text);
                cmd.Parameters.AddWithValue("@PSelPrice", txtsellPrice.Text);
                cmd.Parameters.AddWithValue("@PBrandID", ddlBrand.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PCategoryID", ddlCategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PSubCatID", ddlSubCategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PGender", ddlGender.SelectedItem.Value );
                cmd.Parameters.AddWithValue("@PDescription",txtDescription.Text);
                cmd.Parameters.AddWithValue("@PProductDetails", txtPDetail.Text);
                cmd.Parameters.AddWithValue("@PMaterialCare", txtMatCare.Text);
                if(chFD.Checked==true)
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());
                }

                if (ch30Ret.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@30DayRet", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@30DayRet", 0.ToString());
                }

                if (chCOD.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@COD", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@COD", 0.ToString());
                }
                con.Open();
                Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());

               //Insert and Upload Images
               if(fulImg01.HasFile)
                {
                    string SavePath = Server.MapPath("~/Images/Product Image/") + PID;
                    if(!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extention = Path.GetExtension(fulImg01.PostedFile.FileName);
                    fulImg01.SaveAs(SavePath + "\\" + txtProductName.Text.ToString().Trim() + "01");
                }
            }
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ECartOnlineShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblSubCategory where MainCatID='" + ddlCategory.SelectedItem.Value + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlSubCategory.DataSource = dt;
                    ddlSubCategory.DataTextField = "SubCatName";
                    ddlSubCategory.DataValueField = "SubCatID";
                    ddlSubCategory.DataBind();
                    ddlSubCategory.Items.Insert(0, new ListItem("-Select-", "0"));


                }

            }
        }
    }
}

