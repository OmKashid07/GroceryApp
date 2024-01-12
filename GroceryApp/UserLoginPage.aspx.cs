using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroceryApp
{
    public partial class UserLoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_Login_Click(object sender, EventArgs e)
        {
            //String cs = "Data Source=(localdb)\\Local;Initial Catalog=Grocery;Integrated Security=True";
            //SqlConnection connection = new SqlConnection(cs);
            //SqlCommand cmd = new SqlCommand("select UserID from Users", connection);
            string username = txt_Username.Text.Trim();
            string password = txt_password.Text.Trim();

            if (AuthenticateUser(username, password))
            {
            
                Response.Redirect("MasterPage.aspx");
            }
            else
            {
                lbl_Error.Text = "Login failed. Please check your username and password.";
            }
        }
        private bool AuthenticateUser(string username, string password)
        {
            String cs = "Data Source=(localdb)\\Local;Initial Catalog=Grocery;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(cs))
            {
                using (SqlCommand command = new SqlCommand("spAuthenticateUser", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);

                    connection.Open();
                    int userCount = (int)command.ExecuteScalar();

                    return userCount > 0;
                }
            }
        }
        protected void btn_update_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserReg.aspx");
            Server.Transfer("UserReg.aspx");
        }
        
    }

}