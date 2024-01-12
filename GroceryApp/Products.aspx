﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="GroceryApp.Products" %>

<DOCTYPE html>

<html>

    <head>
          <%--<h2 style="color:crimson;"> Welcome To Our Grocery Store</h2>--%>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/ >
   
   
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
            body {
    
   
   
    
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
    }

.topnav {
    overflow: hidden;
    background-color: #333;
        }

.topnav .nd {
    float: right;
    
    }

.topnav .nd:hover {
    background-color: #ddd;
    color: black;
    }
.important{
    overflow: hidden;
    background-color: #333;
    color: #f2f2f2;
}
*{
    font-family: 'Poppins', sans-serif;
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
    scroll-behavior: smooth;
}
ul{
    list-style: none;
}
a{
    text-decoration: none;
}
body{
    margin: 0px;
    padding: 0px;
    font-family: poppins;
}
 
::selection{
color:#ffffff;
background-color:#40aa54;}
 
/* Navigation */
    

.topnav {
  overflow: hidden;
  background-color: #333;
            }
.xyz {
  display: block;
  margin-left: auto;
  margin-right: auto;
  padding-left:600px;
  color:white;
}
   
.navigation{
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 35px;
    max-width: 1070px;
    width: 100%;
    margin: auto;
    margin-left: 90px;
}
.menu{
    display: flex;
	align-items:left;
}
.menu li a{
    padding: 3px 10px;
    margin: 0px 15px;
    color: #3b3b3b;
    font-weight: 500;
    letter-spacing: 0.5px;
    transition: all ease 0.3s;
	
}
.logo{
    font-size: 1.4rem;
    font-weight: 600;
    letter-spacing: 1px;
    color: #202020;
}
.logo span{
    color: #40aa54;
}
.right-nav{
    display: flex;
    grid-template-columns: auto auto;
    grid-gap: 25px;
}
.right-nav a{
    width:40px;
    height: 40px;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    position: relative;
}
.right-nav .like{
    background-color: #fff0ee;
    color: #ff6c57;
}
.right-nav .cart{
    background-color: #ecf7ee;
    color: #4eb060;
}
.right-nav .user-profile{
    background-color: #ecf7ee;
    color: rgb(139, 195, 221);
}
.right-nav a span{
    position: absolute;
    top: -7px;
    right: -7px;
    width:20px;
    height: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    color: #ffffff;
    font-size: 0.6rem;
    font-weight: 500;
}
.right-nav .like span{
    background-color: #ff6c57;
}
.right-nav .cart span{
    background-color: #4eb060;
}
.right-nav .user-profile span{
    background-color: rgb(95, 183, 224);
}
.menu li a:hover,
.menu .active{
    color: #40aa54;
    transition: all ease 0.3s;
}

/* Search-Banner */
#search-banner{
    max-width: 1250px;
    height: 500px;
    border-radius: 30px;
    background-color: #ecf7ee;
    margin: 10px auto;
    position: relative;
    overflow: hidden;
    background-image: url(../images/bg.png);
    background-repeat: no-repeat;
    background-size: 1000px;
    background-position: bottom right;
    padding: 20px;
    display: flex;
    align-items: center;
}
.bg-1{
    position: absolute;
    left: -50px;
    top: -150px;
    width: 300px;
    height: 500px;
    object-fit: contain;
    object-position: center;
    opacity: 0.7;
}
.bg-1_rev{
    position: absolute;
    right: -60px;
    top: 150px;
    width: 300px;
    height: 500px;
    -webkit-transform: scaleX(-1);
    transform: scaleX(-1);
    object-fit: contain;
    object-position: center;
    opacity: 0.7;
}
.bg-2{
    position: absolute;
    left: 60%;
    transform: translateX(-60%);
    top: -75px;
    width: 150px;
    height: 150px;
    object-position: center;
    object-fit: contain;
}
.search-banner-text{
    display: flex;
    flex-direction: column;
    /* width: 500px; */
    margin-left: 70px;
    position: relative;
}
.search-banner-text h1{
    font-size: 3rem;
    line-height: 55px;
    color: #202020;
}
.search-banner-text strong{
    color: #4eb060;
    font-size: 1.4rem;
    margin-top: 4px;
}
.search-box{
    background-color: #ffffff;
    height: 50px;
    display: flex;
    align-items: center;
    margin-top: 25px;
    padding: 0px 5px 0px 20px;
    border-radius: 30px;
    border-color: #78d98f;
    border-width: 1.5px;
    border-style: solid;
}
.search-box i{
    font-size: 1.3rem;
    color: #3b3b3b;
    margin: 0px 10px;
}
.search-box .search-input{
    height: 40px;
    border: none;
    width: 100%;
    padding: 0px 10px;
    outline: none;
}
.search-box .search-btn{
    width:220px;
    height: 40px;
    border-radius: 30px;
    background-color: #4eb060;
    border: none;
    color: #ffffff;
    outline: none;
    cursor: pointer;
    transition: all ease 0.3s;
}
.search-box .search-btn:hover{
    background-color: #5ccf71;
    transition: all ease 0.3s;
}

/* sale */
.sale-heading {
    font-weight: normal;
    font-size: 4rem;
    margin-top: 5rem;
    margin-left: 20%;
}

.countdown-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    margin: 50px auto;
    max-width: 1000px;
}

.big-text {
    font-weight: bold;
    font-size: 4rem;
    line-height: 1;
    margin: 1rem 2rem;
}

.countdown-el {
    text-align: center;
}

.countdown-el span {
    font-size: 1.3rem;
}
/* category */
#category,
#popular-product,
#popular-bundle-pack,
#partner{
    display: flex;
    flex-direction: column;
    max-width: 1000px;
    margin: 50px auto;
}
.category-heading,
.product-heading,
.partner-heading{
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.category-heading h2,
.product-heading h3,
.partner-heading h3{
    font-size: 1.56rem;
    font-weight: 700;
    color: #202020;
    letter-spacing: 0.5px;
}
.category-heading span,
.product-heading span{
    color: #a7a7a7;
    font-weight: 400;
    letter-spacing: 1px;
}
.category-container{
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 40px;
}
.fa-search {
    cursor: pointer;
}
.category-box{
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    background-color: #fafafa;
    border-radius: 10px;
    min-height: 130px;
    width: 120px;
    cursor: pointer;
                height: 36px;
            }
.category-box img{
    height: 35px;
    width: 50px;
    object-fit: contain;
    object-position: center;
    transition: all ease 0.1s;
}
.category-box span{
    color: #393939;
    font-size: 0.8rem;
    margin-top: 20px;
    letter-spacing: 0.3px;
    font-weight: 600;
}
.category-box:hover img{
    transform: scale(1.1);
    transition: all ease 0.1s;
}
/* popular-product */
#popular-product{
    margin: 80px auto;
}
.product-container{
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    grid-gap: 30px;
    align-items: center;
    margin: 40px 0px;
}
.product-box img{
    width: 90%;
    height: 180px;
    object-fit: contain;
    object-position: center;
    margin: auto;
}
.product-box{
    width: 100%;
    border: 1px solid #eeeeee;
    border-radius: 20px;
    background-color: #ffffff;
    padding: 20px;
    display: flex;
    flex-direction: column;
    position: relative;
    cursor: pointer;
}
.product-box strong{
    color: #202020;
    font-size: 1.1rem;
    letter-spacing: 1px;
    font-weight: 600;
    margin-top: 10px;
}
.product-box .quantity{
    color: #949494;
    font-size: 0.8rem;
    font-weight: 500;
    letter-spacing: 1px;
}
.product-box .price{
    margin-top: 10px;
    font-weight: 600;
    font-size: 1.4rem;
    color: #393939;
}
.product-box .cart-btn{
    width:100%;
    height: 40px;
    background-color: #ecf7ee;
    color: #4eb060;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 20px;
    transition: all ease 0.3s;
    border-radius: 20px;
}
.product-box .cart-btn i{
    margin-right: 10px;
}
.product-box .cart-btn:hover{
    background-color: #4eb060;
    color: #ffffff;
    transition: all ease 0.3s;
}
.product-box .like-btn{
    position: absolute;
    right: 30px;
    top: 20px;
    color: #c9c9c9;
    font-size: 1.3rem;
}

.like-btn:hover {
    color: red;
    cursor: pointer;
}
 
/* popular-bundle-pack */
#popular-bundle-pack{
    display: flex;
    flex-direction: column;
    justify-content: center;
    max-width: 1150px;
    margin: 50px auto;
    padding: 60px 0px 20px 0px;
    border-radius: 20px;
    background-color: #ecf7ee;
    border: 1px solid #f3f3f3;
    align-items: center;
}
.product-container,
.product-heading{
    max-width: 1000px;
    width: 100%;
}
/* clients */
#clients{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    background-color: #f6f6f656;
    padding: 80px 0px;
    margin: 40px 0px;
    border-top: 1px solid #f3f3f3;
    border-bottom: 1px solid #f3f3f3;
}
.client-heading h3{
    font-size: 1.56rem;
    color: #202020;
    font-weight: 700;
    letter-spacing: 0.5px;
}
.client-box-container{
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    grid-gap: 20px;
    width: 90%;
    margin-top: 40px;
}
.client-box{
    background-color: #ffffff;
    padding: 30px 20px;
    border: 1px solid #f1f1f1;
    box-shadow: 2px 2px 50px rgba(0,0,0,0.05);
    border-radius: 0px 30px 0px 30px;
}
.client-box:hover {
    background-color: #c3eecd;
    color: #ffffff;
    transition: 0.3s all ease-in-out;
    cursor: pointer;
}
.client-profile{
    display: flex;
    align-items: center;
}
.client-profile img{
    width:40px;
    height: 40px;
    object-fit: cover;
    object-position: center;
    border-radius: 50%;
}
.profile-text{
    display: flex;
    flex-direction: column;
    margin-left: 10px;
}
.profile-text strong{
    color: #393939;
    font-size: 1rem;
    font-weight: 600;
}
.profile-text span{
    color: #949494;
    font-weight: 500;
    font-size: 0.9rem;
}
.rating{
    display: flex;
    margin: 10px 0px;
}
.rating i{
    color: #fdcc0d;
}
.client-box p{
    color: #7c7c7c;
}
/* partner-logo */
#partner{
    margin: 100px auto;
}
.logo-container{
    display: flex;
    justify-content: space-between;
    margin-top: 40px;
}

.logo-container img{
    height: 55px;
    object-fit: contain;
    object-position: center;
    filter: grayscale(1);
    opacity: 0.3;
    transition: all ease 0.3s;
}
.logo-container img:hover{
    filter: grayscale(0);
    opacity: 1;
    transition: all ease 0.3s;
}
/* Download-app */
#download-app{
    max-width:1150px;
    width: 100%;
    background-color: #ecf7ee;
    height: 400px;
    margin: 225px auto;
    border-radius: 20px;
    padding: 20px;
    display: flex;
    justify-content: space-around;
    align-items: center;
}
.app-img{
    width:275px;
    height: 550px;
    background-color: #ffffff;
    border: 4px solid #393939;
    border-radius: 20px;
    overflow: hidden;
}
.app-img img{
    width: 100%;
    height: 100%;
    object-fit: cover;
    object-position: top center;
}
.download-app-text{
    max-width:400px;
}
.download-app-text strong{
    color: #393939;
    font-size: 1.56rem;
}
.download-app-text p{
    color: #3b3b3b;
    margin: 15px 0px;
}
.download-btns{
    display: flex;
}
.download-btns a{
    height: 44px;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-right: 10px;
    border-radius: 5px;
    overflow: hidden;
}
.download-btns a img{
    height: 100%;
    object-fit: cover;
    object-position: center;
}
/* footer */
footer{
    background-color: #1b1d1f;
    padding: 50px 20px;
    border-top: 5px solid #4eb060;
}
.footer-container{
    max-width: 1100px;
    margin: auto;
    display: flex;
    justify-content: space-around;
    align-items: flex-start;
}
.footer-logo{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.footer-logo a{
    color: #ffffff;
    font-size: 1.4rem;
    font-weight: 600;
    letter-spacing: 1px;
}
.footer-logo a span{
    color: #4eb060;
}
.footer-social{
    display: flex;
    margin-top: 10px;
}
.footer-social a{
    width:40px;
    height: 40px;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #ffffff;
    border: 1px solid #ffffff15;
    font-size: 0.9rem;
    margin: 0px 5px;
    transition: all ease 0.3s;
}
.footer-social a:hover{
    background-color: #4eb060;
    transition: all ease 0.3s;
}
.footer-links strong{
    color: #ffffff;
    font-size: 1.4rem;
    font-weight: 600;
}
.footer-links ul{
    margin-top: 10px;
}
.footer-links ul li a{
    color: #ffffff;
    opacity: 0.5;
    margin: 4px 0px;
    font-size: 0.9rem;
    letter-spacing: 1px;
    transition: all ease 0.3s;
}
.footer-links li a:hover{
    opacity: 1;
    transition: all ease 0.3s;
}
    .navigation .menu li{
        width: 100%;
        margin: 0px;
        padding: 0px;
    }
    .navigation .menu li a{
        width: 100%;
        height: 40px;
        display: flex;
        align-items: center;
        padding: 30px 20px;
        margin: 0px;
        border: 1px solid rgba(248,247,247,0.5);
    }
    .menu-icon{
        display: block;
    }
    .navigation .menu-icon{
        cursor: pointer;
        float: right;
        padding: 5px;
        position: relative;
        user-select: none;
        z-index: 2;
    }
    .navigation .menu-icon .nav-icon{
        background-color: #141414cc;
        display: block;
        height: 2px;
        width: 25px;
        position: relative;
        transition: background 0.2s ease-out;
    }
    .navigation .menu-icon .nav-icon::before,
    .navigation .menu-icon .nav-icon::after{
        background-color: #141414cc;
        content: '';
        display: block;
        position: absolute;
        width: 100%;
        height: 100%;
        transition: all ease-out 0.2s;
    }
    .navigation .menu-icon .nav-icon::before{
        top: 7px;
    }
    .navigation .menu-icon .nav-icon::after{
        top: -7px;
    }
    .navigation .menu-btn:checked ~ .menu-icon .nav-icon::before{
        transform: rotate(-45deg);
        top: 0px;
    }
    .navigation .menu-btn:checked ~ .menu-icon .nav-icon::after{
        transform: rotate(45deg);
        top: 0px;
    }
    .navigation .menu-btn:checked ~ .menu-icon .nav-icon{
        background-color: transparent;
    } 
    .navigation .menu-btn:checked ~ .menu{
        display: block;
    }   
 
    #search-banner{
        height: 400px;
        background-size: 500px;
    }
    .bg-2{
        width: 100px;
        height: 100px;
        top: -50px;
    }
    .category-container{
        flex-wrap: wrap;
        justify-content: center;
    }
    .category-box{
        margin: 10px;
    }
    .product-container{
        grid-template-columns: 1fr 1fr;
    }
    .client-box-container{
        grid-template-columns: 1fr 1fr;
    }
    .partner-heading{
        justify-content: center;
    }
    .logo-container{
        flex-wrap: wrap;
        justify-content: center;
    }
    .logo-container img{
        margin: 10px;
    }
    #download-app{
        flex-direction: column;
        height: 100%;
        background-color: transparent;
        margin-top: 0px;
        width: 90%;
        max-width: 100%;
    }
    .app-img{
        height: 450px;
        width: 220px;
    }
    .download-app-text{
        max-width: 100%;
        background-color: #ecf7ee;
        padding: 20px;
        border-radius: 20px;
        margin-top: 20px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;
    }
    .footer-container{
        display: grid;
        grid-template-columns: 1fr 1fr;
    }
    .footer-links{
        text-align: center;
    }

    
@media(max-width:500px){
    #search-banner{
        height: 200px;
        background-size: 300px;
    }
    .search-banner-text{
        margin-left: 0px;
        max-width: 100%;
    }
    .search-banner-text h1{
        font-size: 1.3rem;
    }
    .search-box{
        width: 100%;
        max-width: 100%;
        height: 40px;
        padding-left: 10px;
    }
    .search-box i{
        font-size: 1rem;
    }
    .search-box .search-btn{
        height: 30px;
    }
    .category-container{
        display: grid;
        grid-template-columns: 1fr 1fr;
        grid-gap: 15px;
    }
    .category-box{
        width: 100%;
        margin: 0px;
    }
    .product-container{
        grid-template-columns: 1fr;
    }
    #popular-bundle-pack{
        padding: 30px 20px 0px 20px;
    }
    .footer-container{
        grid-template-columns: 1fr;
    }
    .footer-links{
        margin-top: 10px;
    }
}
@media(max-width:400px){
    .category-heading h2,
    .product-heading h3,
    .client-heading h3,
    .partner-heading h3{
        font-size: 1.2rem;
    }
}
@media(max-width:350px){
    .download-btns{
        flex-direction: column;
    }
    .download-btns a{
        margin: 4px 0px;
        width: 140px;
    }
    .download-btns a img{
        width: 100%;
    }
    .right-nav{
        grid-gap: 5px;
    }
   
}
        </style>
  

  
    <link rel="stylesheet" type="text/css" href="Home Page CSS.css">

   
    <link rel="shortcut icon" href="images/fav-icon.png"/>
<script type="text/javascript" src="js/JScript.js" ></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" type ="text/javascript"></script>
       <%-- <h2 style="color:crimson;"> Welcome To Our Grocery Store</h2>--%>
    </head>
    

    <body>
       <%-- <h2 style="color:crimson;"> Welcome To Our Grocery Store</h2>--%>
        <form id="form1" runat="server">



    <div class="topnav">
        
    <asp:Button class="important redir" ID="Button1" runat="server" OnClick="Button1_Click1"  Text="Login" Height="52px" Width="80px" />
    <asp:Button class="important redir nd" ID="Button2" OnClick="Button2_Click1" runat="server" Text="logout" Height="52px" Width="80px" />
    <asp:Button class="important redir nd" ID="Button3" OnClick="Button3_Click1" runat="server" Text="Cart" Height="52px" Width="100px" />
    <asp:Button class="important redir nd" ID="Button4" OnClick="Button4_Click1" runat="server" Text="Product" Height="52px" Width="80px" />
    <h2 style="color: crimson; text-align: center;">Welcome To Our Grocery Store</h2>
    </div>

            
 

     

 <%--<div class="col-md-8 col-md-offset-2">
     <asp:GridView ID="empgrid" runat="server" CssClass="table text-center" EmptyDataText = "No files uploaded" 
         DataKeyNames="ProductID"
         AutoGenerateColumns="False"
         OnRowCommand="empgrid_RowCommand" 
          
                   
        >
       
         
        
      <Columns>
          <asp:BoundField HeaderText="Product  ID" Datafield="ProductID"  Visible="false"/>

           <asp:TemplateField HeaderText="Image">
         <ItemTemplate>
          <asp:Image ID="imgFile" runat="server" Height="50px" Width="50px" ImageUrl='<%# GetImageSrc(Eval("Image"), Eval("PImagename")) %>' />
        </ItemTemplate>
       </asp:TemplateField>



          <asp:BoundField HeaderText="Product Name" Datafield="ProductName" />

            <asp:BoundField DataField="Price" HeaderText="Price" />

          <asp:ButtonField ButtonType="Button" HeaderText="Action" Text="Add to Cart"  CommandName="AddToCart" ControlStyle-CssClass="btn btn-primary" >

      <ControlStyle CssClass="btn btn-primary"></ControlStyle>
          </asp:ButtonField>

 
      </Columns>

     </asp:GridView>

 </div>--%>

    
   <div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <asp:GridView ID="empgrid" runat="server" CssClass="table table-bordered text-center" EmptyDataText="No files uploaded"
                DataKeyNames="ProductID" AutoGenerateColumns="False" OnRowCommand="empgrid_RowCommand" Height="16px" Width="520px">

                <Columns>
                    <asp:BoundField HeaderText="Product ID" Datafield="ProductID" Visible="false" />

                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="imgFile" runat="server" CssClass="img-responsive" ImageUrl='<%# GetImageSrc(Eval("product_Image"), Eval("pimagename")) %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField HeaderText="Product Name" Datafield="ProductName" />

                    <asp:BoundField DataField="Price" HeaderText="Price" />

                    <asp:ButtonField ButtonType="Button" HeaderText="Action" Text="Add to Cart" CommandName="AddToCart"
                        ControlStyle-CssClass="btn btn-primary">
                        <ControlStyle CssClass="btn btn-primary"></ControlStyle>
                    </asp:ButtonField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</div>



</form>



       
       

     

       

  
         
    </body>
</html>
