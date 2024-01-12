<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="GroceryApp.cart" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart</title>
   
             <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/ >

   


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>&nbsp;Cart</h2>
             <div class="col-md-8 col-md-offset-2">
            <asp:GridView ID="cartGrid" runat="server" AutoGenerateColumns="False" CssClass="table table-hover text-center" >
                <Columns>
                    <asp:BoundField HeaderText="Product ID" DataField="ProductID" Visible="false" />
                    <asp:BoundField HeaderText="Product Name" DataField="ProductName" />
                    <asp:BoundField HeaderText="Price" DataField="Price" />
                    <asp:BoundField HeaderText="Quantity" DataField="Quantity" />
                </Columns>
            </asp:GridView>
                                 

                 &nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click" Text="Total Amount" />
                                 <asp:Label ID="Label2" runat="server" Text="" CssClass="label label-success center-content"></asp:Label>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="btnBuy" runat="server" Text="Pay" CssClass="btn btn-success" OnClick="btnBuy_Click" />

                 &nbsp;&nbsp;&nbsp;&nbsp;

  <asp:DropDownList ID="ddlBanks" runat="server" CssClass="form-control" Width="250px">
 <asp:ListItem Text="Select Bank" Value="" />
<asp:ListItem Text="Bank of America" Value="Bank of America" />
<asp:ListItem Text="Hdfc" Value="Hdfc" />
   
    </asp:DropDownList>


        </div>

            
                <asp:Label ID="lblSuccessMessage" runat="server" Text="" CssClass="label label-success center-content"></asp:Label>
<asp:Label ID="lblErrorMessage" runat="server" Text="" CssClass="label label-danger center-content"></asp:Label>

            
            </div>
    </form>
    
    <br />
    <br />
    
            <div id="receiptContainer" runat="server" style="display:none; padding-left:500px;" >
                <h3>Payment Receipt</h3>
                <p><strong>Amount Paid:</strong> <span id="lblAmountPaid" runat="server"></span></p>
                <p><strong>Payment Method:</strong> <span id="lblPaymentMethod" runat="server"></span></p>
            </div>

</body>
</html>