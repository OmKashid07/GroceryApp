using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    namespace GroceryApp
    {
        public partial class Buy : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                GetData();
            }

            private void GetData()
            {
            String cs = "Data Source=(localdb)\\Local;Initial Catalog=Grocery;Integrated Security=True";
            SqlConnection Con = new SqlConnection(cs);

                SqlCommand cmd = new SqlCommand("spGetDataBuyProducts", Con);

                Con.Open();
                empgrid.DataSource = cmd.ExecuteReader();
                empgrid.DataBind();
                Con.Close();
            }

            protected void btnsubmit_Click(object sender, EventArgs e)
            {



            String cs = "Data Source=(localdb)\\Local;Initial Catalog=Grocery;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);

                string product = txtproduct.Text;

                int quantity = Convert.ToInt32(txtquantity.Text);

                SqlCommand cmd = new SqlCommand("spInsertBuyProducts", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Product", product);
                cmd.Parameters.AddWithValue("@Quantity", quantity);



                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Complete','record inserted!..','success')", true);
                txtproduct.Text = "";
                txtquantity.Text = "";
                GetData();



            }
            protected void empgrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
            {
                int id = Convert.ToInt32(empgrid.DataKeys[e.RowIndex].Value);
                String cs = "Data Source = Local; Initial Catalog = Grocery; Integrated Security = True";
                SqlConnection Con = new SqlConnection(cs);

                SqlCommand cmd = new SqlCommand("spDeletepro", Con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@proid", id);

                Con.Open();
                cmd.ExecuteNonQuery();
                Con.Close();



                GetData();
            }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
    }
