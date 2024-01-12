<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="GroceryApp.userReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <title></title>
    <style type="text/css">
        .login-container {
            height: 23px;
            width: 337px;
            margin-left: 267px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 class="text-center">User Registration</h2>
               <div class="form-group">
                   <div class="row">
                 <div class="col-md-2">
                     <label>First Name</label>
                 </div>
                 <div class="col-mb-10">
                   <asp:TextBox CssClass="form-control" ID="txtfname" PlaceHolder="Enter firstname" runat="server" Width="200px"></asp:TextBox>

                 </div>
              </div>
             </div>

              <div class="form-group">
      <div class="row">
    <div class="col-md-2">
        <label>Last Name</label>
    </div>
    <div class="col-mb-10">
      <asp:TextBox CssClass="form-control" ID="txtlname" PlaceHolder="Enter lastname" runat="server" Width="200px"></asp:TextBox>

    </div>
 </div>
</div>

              <div class="form-group">
      <div class="row">
    <div class="col-md-2">
        <label>Email</label>
    </div>
    <div class="col-mb-10">
      <asp:TextBox CssClass="form-control" ID="txtemail" PlaceHolder="Enter email" runat="server" Width="200px"></asp:TextBox>

    </div>
 </div>
</div>

              <div class="form-group">
      <div class="row">
    <div class="col-md-2">
        <label translate="no">Password</label>
    </div>
    <div class="col-mb-10">
      <asp:TextBox CssClass="form-control" ID="txtpass" PlaceHolder="Enter password" runat="server" Width="200px"></asp:TextBox>

    </div>
 </div>
</div>

              <div class="form-group">
      <div class="row">
    <div class="col-md-2">
        <label aria-busy="False" aria-live="assertive">Address</label>
    </div>
    <div class="col-mb-10">
      <asp:TextBox CssClass="form-control" ID="txtaddress" PlaceHolder="Enter address" runat="server" Width="200px"></asp:TextBox>

    </div>
 </div>
</div>                       

            <div class="form-group">
     
             <div class="row">
                <div class="col-md-2 col-md-offset-2">
                   <asp:Button CssClass="btn btn-block btn-success" ID="btnsubmit" Text="Add ME" runat="server" OnClick="btnsubmit_Click" BorderStyle="Groove" Width="208px" Height="36px"></asp:Button>             
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;             
                 </div>
                  <div class="col-md-2 col-md-offset-2">
                      <asp:Button CssClass="btn btn-block btn-danger" ID="btnclear" Text="clear" runat="server" BorderStyle="Ridge" Width="200px"></asp:Button>
                  </div>
            </div>
             </div>

          <br />

        </div>
   

    <div class="col-md-8 col-md-offset-2">
    <asp:GridView ID="empgrid" runat="server" CssClass="table-hover text-center"  
        DataKeyNames="UserID" 
      

        OnRowDeleting="empgrid_RowDeleting"              
       OnRowEditing="empgrid_RowEditing"
       OnRowCancelingEdit="empgrid_RowCancelingEdit"
       OnRowUpdating="empgrid_RowUpdating" AutoGenerateColumns="False" >
        
       
     <Columns>
         <asp:BoundField HeaderText="UserID" Datafield="UserID" />


         <asp:TemplateField HeaderText="First name">
             <ItemTemplate>
                 <asp:Label runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
             </ItemTemplate>
             <EditItemTemplate>
                 <asp:TextBox ID="txtfname" runat="server"  Text='<%# Bind("FirstName") %>'></asp:TextBox>
             </EditItemTemplate>
         </asp:TemplateField>


         <asp:TemplateField HeaderText="Last name"    >
          <ItemTemplate>
              <asp:Label runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
          </ItemTemplate>
          <EditItemTemplate>
              <asp:TextBox ID="txtlname" runat="server"  Text='<%# Bind("LastName") %>'></asp:TextBox>
          </EditItemTemplate>
      </asp:TemplateField> 
      
 

     <asp:TemplateField HeaderText="Email"    >
          <ItemTemplate>
              <asp:Label runat="server" Text='<%# Eval("Email") %>'></asp:Label>
          </ItemTemplate>
          <EditItemTemplate>
              <asp:TextBox ID="txtemail" runat="server"  Text='<%# Bind("Email") %>'></asp:TextBox>
          </EditItemTemplate>
      </asp:TemplateField> 


         <asp:TemplateField HeaderText="Password"    >
     <ItemTemplate>
         <asp:Label runat="server" Text='<%# Eval("PasswordHash") %>'></asp:Label>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txtpass" runat="server"  Text='<%# Bind("PasswordHash") %>'></asp:TextBox>
     </EditItemTemplate>
 </asp:TemplateField> 


         <asp:TemplateField HeaderText="Address"    >
     <ItemTemplate>
         <asp:Label runat="server" Text='<%# Eval("Address") %>'></asp:Label>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txtaddress" runat="server"  Text='<%# Bind("Address") %>'></asp:TextBox>
     </EditItemTemplate>
 </asp:TemplateField> 

     <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger"  HeaderText="Remove Record">
          
     </asp:CommandField>

     <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-primary"  HeaderText="Edit Record">
       </asp:CommandField>
       



     </Columns>

    </asp:GridView>

    </div>
 </form>
</body>
</html>
