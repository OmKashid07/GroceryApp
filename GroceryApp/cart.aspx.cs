using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroceryApp
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;


                cartGrid.DataSource = cartItems;
                cartGrid.DataBind();
            }
        }

        //protected void btnBuy_Click(object sender, EventArgs e)
        //{

        //    List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;

        //    if (cartItems != null && cartItems.Count > 0)
        //    {

        //        decimal totalAmount = 0;
        //        foreach (CartItem item in cartItems)
        //        {
        //            totalAmount += item.Price * item.Quantity;
        //        }

        //        // Perform the payment (You can implement your payment logic here)
        //        bool paymentSuccessful = ProcessPayment(totalAmount);

        //        if (paymentSuccessful)
        //        {
        //            //  successful payment
        //            Session["CartItems"] = null;

        //            //  to a confirmation page
        //            ClientScript.RegisterStartupScript(GetType(), "PaymentSuccess", "alert('Payment successful. Thank you for your purchase.'); window.location='Confirmation.aspx';", true);
        //        }
        //        else
        //        {
        //            //  failure message
        //            ClientScript.RegisterStartupScript(GetType(), "PaymentFailure", "alert('Payment failed. Please try again.');", true);
        //        }
        //    }
        //    else
        //    {
        //        // empty
        //        ClientScript.RegisterStartupScript(GetType(), "EmptyCart", "alert('Your shopping cart is empty.');", true);
        //    }
        //}
        protected void btnBuy_Click(object sender, EventArgs e)
        {
            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;

            if (cartItems != null && cartItems.Count > 0)
            {
                decimal totalAmount = 0;
                foreach (CartItem item in cartItems)
                {
                    totalAmount += item.Price * item.Quantity;
                }


                string selectedBank = ddlBanks.SelectedValue;


                if (!string.IsNullOrEmpty(selectedBank) && selectedBank != "Select Bank")
                {
                    bool paymentSuccessful = ProcessPayment(totalAmount, selectedBank);

                    if (paymentSuccessful)
                    {
                     
                        Session["CartItems"] = null;
                        

                        
                        lblSuccessMessage.Text = $"Payment successful. Thank you for your purchase. You paid {totalAmount:C} using {selectedBank}.";
                        ShowReceipt(totalAmount, selectedBank);
                    }
                    
                    else
                    {

                        lblErrorMessage.Text = "Payment failed. Please try again.";
                    }
                }
                else
                {
                    
                    lblErrorMessage.Text = "Please select a bank for payment.";
                }
            }
            else
            {
                lblErrorMessage.Text = "Your shopping cart is empty.";
            }
            
        }

        private bool ProcessPayment(decimal totalAmount, string selectedBank)
        {

            if (selectedBank == "Bank of America" || selectedBank == "Hdfc")
            {

                return true;
            }
            else
            {
                return false;
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            
            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;
            if (cartItems != null && cartItems.Count > 0)
            {
                string selectedBank = ddlBanks.SelectedValue;
                decimal totalAmount = 0;
                foreach (CartItem item in cartItems)
                {
                    totalAmount += item.Price * item.Quantity;
                }
                Label2.Text = totalAmount.ToString();
                // Perform the payment (You can implement your payment logic here)
                bool paymentSuccessful = ProcessPayment(totalAmount, selectedBank);
            }
        }
        private void ShowReceipt(decimal amount, string paymentMethod)
        {
            // Display the receipt details
            lblAmountPaid.InnerText = amount.ToString("C");
            lblPaymentMethod.InnerText = paymentMethod;

            // Show the receipt container
            receiptContainer.Style["display"] = "block";
        }


    }
}
