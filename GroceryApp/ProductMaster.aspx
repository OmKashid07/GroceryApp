<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductMaster.aspx.cs" Inherits="GroceryApp.productmaster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .topnav {
    overflow: hidden;
    background-color: #333;
    text-decoration-color:inherit;
        }
    </style>
     <script type="text/javascript" src="js/JScript.js" ></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/ >
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" type ="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        
    <div text-align: right; class="topnav">
        
    <asp:Button class="important redir" ID="Button1" runat="server" OnClick="Button1_Click1"  Text="Login" Height="52px" Width="80px" />
    
    <asp:Button  class="important redir nd" ID="Button3" OnClick="Button3_Click1" runat="server" Text="Cart" Height="52px" Width="100px" />
    <asp:Button class="important redir nd" ID="Button4" OnClick="Button4_Click1" runat="server" Text="Product" Height="52px" Width="80px" />
        <asp:Button class="important redir nd" ID="Button2" OnClick="Button2_Click1" runat="server" Text="logout" Height="52px" Width="80px" />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        </div>

        <h2 script="text-align:center">Product Registration </h2>
        <div class="col-md-6 col-md-offset-3">
             
            <div class="form-group">
                   <div class="row">
                     <div class="col-md-2">
                        <label>Productname</label>
                     </div>
               <div class="col-mb-10">
                     <asp:TextBox CssClass="form-control" ID="txtproduct" PlaceHolder="Enter productname" runat="server"></asp:TextBox>

               </div>
             </div>
          </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label>Price</label>
                    </div>
                    <div class="col-mb-10">
                        <asp:TextBox CssClass="form-control" ID="txtprice" PlaceHolder="Enter price" runat="server"></asp:TextBox>

                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label>Quantity</label>
                    </div>
                    <div class="col-mb-10">
                        <asp:TextBox CssClass="form-control" ID="txtquantity" PlaceHolder="Quantity in Kg" runat="server"></asp:TextBox>

                        </div>
                </div>
            </div>

           

            



             <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label>Upload file</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:FileUpload ID="fileuploadEmpImage" runat="server" />
                       
                        <hr />

                    </div>
                </div>
            </div>
            
           
            <div class="form-group">
                 
                <div class="row">
                    <div class="col-md-2 col-md-offset-2">
                        <asp:Button CssClass="btn btn-block btn-success" ID="btnsubmit" Text="Submit" runat="server" OnClick="btnsubmit_Click"></asp:Button>             
                    </div>
                    <div class="col-md-2 col-md-offset-2">
                        <asp:Button CssClass="btn btn-block btn-danger" ID="btnclear" Text="clear" runat="server"></asp:Button>
                    </div>
                </div>
            </div>

            <br />


        </div>

        <div class="col-md-8 col-md-offset-2">
            <asp:GridView ID="empgrid" runat="server" CssClass="table text-center" EmptyDataText = "No files uploaded" 
                DataKeyNames="ProductID"
                AutoGenerateColumns="False"
                

                OnRowDeleting="empgrid_RowDeleting"              
               >
              
                
               
             <Columns>
                 <asp:BoundField HeaderText="Product  ID" Datafield="ProductID"  Visible="false"/>


                 <asp:TemplateField HeaderText="ProductName">
                     <ItemTemplate>
                         <asp:Label runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                     </ItemTemplate>
                     <EditItemTemplate>
                         <asp:TextBox ID="txtproduct" runat="server"  Text='<%# Bind("ProductName") %>'></asp:TextBox>
                     </EditItemTemplate>
                 </asp:TemplateField>


                 <asp:TemplateField HeaderText="Price"    >
                  <ItemTemplate>
                      <asp:Label runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                  </ItemTemplate>
                  <EditItemTemplate>
                      <asp:TextBox ID="txtprice" runat="server"  Text='<%# Bind("Price") %>'></asp:TextBox>
                  </EditItemTemplate>
              </asp:TemplateField> 
              
              <asp:TemplateField HeaderText="Quantity"    >
                  <ItemTemplate>
                      <asp:Label runat="server" Text='<%# Eval("StockQuantity") %>'></asp:Label>
                  </ItemTemplate>
                  <EditItemTemplate>
                      <asp:TextBox ID="txtquantity" runat="server"  Text='<%# Bind("StockQuantity") %>'></asp:TextBox>
                  </EditItemTemplate>
              </asp:TemplateField> 
                  

           

              <asp:TemplateField HeaderText="Image">
                     <ItemTemplate>
                     <asp:Image ID="imgFile" runat="server" Height="50px" Width="50px" ImageUrl='<%# GetImageSrc(Eval("Product_Image"), Eval("PImagename")) %>' />
                     </ItemTemplate>
                </asp:TemplateField>




             <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger"  HeaderText="Remove Record">
                  
             </asp:CommandField>

           


             </Columns>

            </asp:GridView>

        </div>
    </form>
</body>
</html>
