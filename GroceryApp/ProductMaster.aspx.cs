using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace GroceryApp
{
    public partial class productmaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
            // GetData();
        }

        private void GetData()
        {
            String cs = "Data Source=(localdb)\\Local;Initial Catalog=Grocery;Integrated Security=True";
            SqlConnection Con = new SqlConnection(cs);

            SqlCommand cmd = new SqlCommand("spGetDataProducts", Con);

            Con.Open();
            empgrid.DataSource = cmd.ExecuteReader();
            empgrid.DataBind();
            Con.Close();
        }

        protected void empgrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(empgrid.DataKeys[e.RowIndex].Value);

            String cs = "Data Source=(localdb)\\Local;Initial Catalog=Grocery;Integrated Security=True";
            SqlConnection Con = new SqlConnection(cs);

            SqlCommand cmd = new SqlCommand("spDeleteproducts", Con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@glsid", id);

            Con.Open();
            cmd.ExecuteNonQuery();
            Con.Close();

            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Complete','record Deleted!..','success')", true);


            GetData();
        }

       
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (fileuploadEmpImage.HasFile)
            {
              

                byte[] fileData = fileuploadEmpImage.FileBytes;

            

                string fileName = Path.GetFileName(fileuploadEmpImage.PostedFile.FileName);


                String cs = "Data Source=(localdb)\\Local;Initial Catalog=Grocery;Integrated Security=True";

                SqlConnection con = new SqlConnection(cs);

                string pname = txtproduct.Text;

                int price = Convert.ToInt32(txtprice.Text);
                int quantity = Convert.ToInt32(txtquantity.Text);



                SqlCommand cmd = new SqlCommand("spInsertProduct", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@pname", pname);
                cmd.Parameters.AddWithValue("@Product_Image", fileData);
                cmd.Parameters.AddWithValue("@price", price);
                cmd.Parameters.AddWithValue("@StockQuantity", quantity);
                cmd.Parameters.AddWithValue("@Pimagename", fileName);

               
                // cmd.Parameters.Add("@img", SqlDbType.Image).Value = fileData;

               
                // cmd.Parameters.AddWithValue("@filename", fileName);


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Complete','record inserted!..','success')", true);
                txtproduct.Text = "";
                txtprice.Text = "";
                txtquantity.Text = "";
              

            }
        }

        private void BindGridView()
        {
            DataTable dt = GetStationaryData(); // Implement this method to get data from the database

            // Bind the DataTable to the GridView
            empgrid.DataSource = dt;
            empgrid.DataBind();
        }

        private DataTable GetStationaryData()
        {
            DataTable dt = new DataTable();

            using (SqlConnection connection = new SqlConnection("Data Source=(localdb)\\Local;Initial Catalog=Grocery;Integrated Security=True"))
            {

                string query = "SELECT * FROM Products";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    adapter.Fill(dt);
                }
            }

            return dt;
        }

        protected string GetImageSrc(object fileData, object fileName)
        {
            if (fileData != DBNull.Value && fileName != DBNull.Value)
            {
                byte[] bytes = (byte[])fileData;
                string base64String = Convert.ToBase64String(bytes);
                return $"data:image/png;base64,{base64String}";
            }
            return string.Empty;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("UserLoginPage.aspx");
            //or
            Server.Transfer("UserLoginPage.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("UserLoginPage.aspx");
            //or
            Server.Transfer("UserLoginPage.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("cart.aspx");
            //or
            Server.Transfer("cart.aspx");
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ProductMaster.aspx");
            //or
            Server.Transfer("ProductMaster.aspx");
        }
    }

}