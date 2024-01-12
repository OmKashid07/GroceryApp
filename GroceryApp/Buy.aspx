<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="GroceryApp.Buy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        
    </style>
    
    
</head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<body>
    <form id="form1" runat="server">
          
            <div class="form-group">
                   <div class="row">
                   <div class="col-md-2">
                        <label>Product</label>
                     </div>
               <div class="col-mb-10">
                     <asp:TextBox CssClass="form-control" ID="txtproduct" PlaceHolder="Enter Product name" runat="server" Width="200px" ></asp:TextBox>

               </div>
             </div>
          </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label>Quantity</label>
                    </div>
                    <div class="col-mb-10">
                        <asp:TextBox CssClass="form-control" ID="txtquantity" PlaceHolder="Enter Quantity in KG" runat="server" Width="200px"></asp:TextBox>

                    </div>
                </div>
            </div>

         <div class="form-group">
      
     <div class="row">
         <div class="col-md-2 col-md-offset-2">
             <asp:Button CssClass="btn btn-block btn-success" ID="btnsubmit" Text="Add To cart" runat="server" OnClick="btnsubmit_Click" Width="250px"></asp:Button>             
         </div>
         <div class="col-md-2 col-md-offset-2">
             <asp:Button CssClass="btn btn-block btn-danger" ID="btncancel" Text="Cancel" runat="server" Width="250px"></asp:Button>
         </div>
     </div>
 </div>


         <div class="col-md-8 col-md-offset-2">
     <asp:GridView ID="empgrid" runat="server" CssClass="table text-center"   
         DataKeyNames="OrderID"
         AutoGenerateColumns="False"
         

         OnRowDeleting="empgrid_RowDeleting"             
         >
         
        
      <Columns>
          <asp:BoundField HeaderText="OrderId " Datafield="OrderID"  Visible="false"/>


          <asp:TemplateField HeaderText="Product">
              <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("Product") %>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                  <asp:TextBox ID="txtproduct" runat="server"  Text='<%# Bind("Product") %>'></asp:TextBox>
              </EditItemTemplate>
          </asp:TemplateField>


          <asp:TemplateField HeaderText="Quantity"    >
           <ItemTemplate>
               <asp:Label runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
           </ItemTemplate>
           <EditItemTemplate>
               <asp:TextBox ID="txtquantity" runat="server"  Text='<%# Bind("Quantity") %>'></asp:TextBox>
           </EditItemTemplate>
       </asp:TemplateField> 
       
      
      <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger"  HeaderText="Remove Product">
           
      </asp:CommandField>

    

      </Columns>

     </asp:GridView>
    </div>

            <asp:Button ID="Button1" runat="server" BackColor="Green" Font-Bold="True" Font-Overline="False" Font-Size="20pt" ForeColor="White" Text="Buy Now" Width="250px" />
            <br />

    </form>
</body>
</html>