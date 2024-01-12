using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroceryApp
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
            // GetData();
        }
        //protected void empgrid_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "AddToCart")
        //    {
        //        int rowIndex = Convert.ToInt32(e.CommandArgument);

        //        int productId = Convert.ToInt32(empgrid.DataKeys[rowIndex].Value);

        //        string productName = empgrid.Rows[rowIndex].Cells[2].Text;
        //        decimal price = Convert.ToDecimal(empgrid.Rows[rowIndex].Cells[3].Text);

        //        List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;

        //        if (cartItems == null)
        //        {
        //            cartItems = new List<CartItem>();
        //        }


        //        cartItems.Add(new CartItem
        //        {
        //            ProductID = productId.ToString(),
        //            ProductName = productName,
        //            Price = price,
        //            Quantity = 1
        //        });


        //        Session["CartItems"] = cartItems;


        //        //  Response.Redirect("~/Cart.aspx");
        //    }
        //}
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

        protected void Button1_Click1(object sender, EventArgs e)
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

        protected void Button5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("UserLoginPage.aspx");
            //or
            Server.Transfer("UserLoginPage.aspx");
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

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("UserLoginPage.aspx");
            //or
            Server.Transfer("UserLoginPage.aspx");
        }


        protected void empgrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "AddToCart")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                int productId = Convert.ToInt32(empgrid.DataKeys[rowIndex].Value);

                string productName = empgrid.Rows[rowIndex].Cells[2].Text;
                decimal price = Convert.ToDecimal(empgrid.Rows[rowIndex].Cells[3].Text);



                SaveToDatabase(productId, productName, price);


                List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;

                if (cartItems == null)
                {
                    cartItems = new List<CartItem>();
                }


                cartItems.Add(new CartItem
                {
                    ProductID = productId.ToString(),
                    ProductName = productName,
                    Price = price,
                    Quantity = 1
                });


                Session["CartItems"] = cartItems;


                //  Response.Redirect("~/Cart.aspx");
            }
        }

        private void SaveToDatabase(int productId, string productName, decimal price)
        {
            
            string connectionString = "Data Source=(localdb)\\Local;Initial Catalog=Grocery;Integrated Security=True;TrustServerCertificate=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "INSERT INTO Cart (ProductID, ProductName, Price) VALUES (@ProductID, @ProductName, @Price)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@ProductID", productId);
                    command.Parameters.AddWithValue("@ProductName", productName);
                    command.Parameters.AddWithValue("@Price", price);

                    command.ExecuteNonQuery();
                }
            }
        }
    }
}