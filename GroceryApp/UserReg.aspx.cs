using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroceryApp
{
    public partial class userReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }

        }

        private void GetData()
        {
            String cs = "Data Source=(localdb)\\Local;Initial Catalog=Grocery;Integrated Security=True; TrustServerCertificate=True";
            SqlConnection Con = new SqlConnection(cs);

            SqlCommand cmd = new SqlCommand("spGetData", Con);

            Con.Open();
            empgrid.DataSource = cmd.ExecuteReader();
            empgrid.DataBind();
            Con.Close();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            String cs = "Data Source=(localdb)\\Local;Initial Catalog=Grocery;Integrated Security=True; TrustServerCertificate=True";

            SqlConnection con = new SqlConnection(cs);

            string fname = txtfname.Text;
            string lname = txtlname.Text;
            string email = txtemail.Text;
            string pass = txtpass.Text;
            string address = txtaddress.Text;


            SqlCommand cmd = new SqlCommand("spInsert", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@fname", fname);
            cmd.Parameters.AddWithValue("@lname", lname);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@pass", pass);
            cmd.Parameters.AddWithValue("@address", address);



            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


            txtfname.Text = "";
            txtlname.Text = "";
            txtemail.Text = "";
            txtpass.Text = "";
            txtaddress.Text = "";

            GetData();

        }

        protected void empgrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int UserId = Convert.ToInt32(empgrid.DataKeys[e.RowIndex].Value);
            String cs = "Data Source=(localdb)\\Local;Initial Catalog=Grocery;Integrated Security=True; TrustServerCertificate=True";
            SqlConnection Con = new SqlConnection(cs);

            SqlCommand cmd = new SqlCommand("spDelete", Con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@glsid", UserId);

            Con.Open();
            cmd.ExecuteNonQuery();
            Con.Close();




            GetData();
        }

        protected void empgrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            empgrid.EditIndex = e.NewEditIndex;
            GetData();
        }

        protected void empgrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            empgrid.EditIndex = -1;
            GetData();
        }

        protected void empgrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String cs = "Data Source=(localdb)\\Local;Initial Catalog=Grocery;Integrated Security=True; TrustServerCertificate=True";

            SqlConnection con = new SqlConnection(cs);

            int id = Convert.ToInt32(empgrid.DataKeys[e.RowIndex].Value);

            string fname = (empgrid.Rows[e.RowIndex].FindControl("txtfname") as TextBox).Text;
            string lname = (empgrid.Rows[e.RowIndex].FindControl("txtlname") as TextBox).Text;
            string email = (empgrid.Rows[e.RowIndex].FindControl("txtemail") as TextBox).Text;
            string pass = (empgrid.Rows[e.RowIndex].FindControl("txtpass") as TextBox).Text;
            string address = (empgrid.Rows[e.RowIndex].FindControl("txtaddress") as TextBox).Text;



            SqlCommand cmd = new SqlCommand("spUpdate", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@fname", fname);
            cmd.Parameters.AddWithValue("@lname", lname);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@pass", pass);
            cmd.Parameters.AddWithValue("@address", address);


            cmd.Parameters.AddWithValue("@id", id);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            empgrid.EditIndex = -1;
            GetData();
        }

        

    }


}