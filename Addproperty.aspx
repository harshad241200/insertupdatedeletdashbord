<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addproperty.aspx.cs" Inherits="shivani81acre.Admin.Addproperty" %>
<!DOCTYPE html>
<html lang="en">
    <!--ead -->
    <!--#include file="head.aspx"-->

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

       <!--sidebar-->
            <!--#include file="sidebar.aspx"-->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <!--#include file="topbar.aspx"-->

                <!-- Begin Page Content -->
                
                <div class="container-fluid">
                    <form runat="server">
      <div class="form-group">
    <label>Property Name</label>
   <asp:TextBox ID="pname" CssClass="form-control" runat="server"></asp:TextBox>
                 <input type="hidden" id="hiddenid" />

  </div>
    <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputEmail4">Minimum Price</label>
        <asp:TextBox ID="pmin" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-4">
      <label for="inputPassword4">Maximum Price</label>
        <asp:TextBox ID="pmax" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
        <div class="form-group col-md-4">
      <label for="inputEmail4">Upload Photo</label>
        <asp:FileUpload ID="uphoto"  runat="server" />
    </div>
  </div>

<div class="form-row">
    <div class="form-group col-md-3">
      <label for="inputEmail4">Facebook Url</label>
      <asp:TextBox ID="facebookUrl" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-3">
      <label for="inputPassword4">Instargram Url</label>
      <asp:TextBox ID="instagramurl" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
        <div class="form-group col-md-3">
      <label for="inputEmail4"> Whatsapp No</label>
      <asp:TextBox ID="whatsappno" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
     <div class="form-group col-md-3">
      <label for="inputEmail4"> Youtube View Url</label>
      <asp:TextBox ID="youtubeviewUrl" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
  </div>
  
 <div class="form-row">
    <div class="form-group col-md-3">
      <label for="inputEmail4">Area in Sqft</label>
      <asp:TextBox ID="areainsqft" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-3">
      <label for="inputPassword4">No of Bedroom</label>
      <asp:TextBox ID="noofbedRoom" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
        <div class="form-group col-md-3">
      <label for="inputEmail4">No of Bathroom</label>
      <asp:TextBox ID="noofbathRoom" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
     <div class="form-group col-md-3">
      <label for="inputEmail4">Garage</label>
      <asp:TextBox ID="garage" CssClass="form-control" runat="server"></asp:TextBox>
  </div>
     </div>
     <div class="form-row">
    <div class="form-group col-md-3">
      <label>List Property For</label>
      <asp:DropDownList ID="propertyfor" class="form-control" runat="server">
        <asp:ListItem Value="For Sale">For Sale</asp:ListItem>  
            <asp:ListItem Value="New Delhi">New Delhi </asp:ListItem>  
            <asp:ListItem Value="Greater Noida">Greater Noida</asp:ListItem>  
            <asp:ListItem Value="NewYork">NewYork</asp:ListItem>  
            <asp:ListItem Value="Paris">Paris</asp:ListItem>  
            <asp:ListItem Value="London">London</asp:ListItem>  
      </asp:DropDownList>
    </div>
    <div class="form-group col-md-3">
      <label>I have a</label>
        <asp:DropDownList ID="ihavea"  class="form-control" runat="server">
           <asp:ListItem Value="Residetial">Residential</asp:ListItem>  
            <asp:ListItem Value="New Delhi">New Delhi </asp:ListItem>  
            <asp:ListItem Value="Greater Noida">Greater Noida</asp:ListItem>  
            <asp:ListItem Value="NewYork">NewYork</asp:ListItem>  
            <asp:ListItem Value="Paris">Paris</asp:ListItem>  
            <asp:ListItem Value="London">London</asp:ListItem>  
        </asp:DropDownList>
    </div>
     <div class="form-group col-md-3">
            <label>Property Type</label>
            <asp:DropDownList ID="propertytype"  class="form-control" runat="server">
           <asp:ListItem Value="Apartment">Apartment</asp:ListItem>  
            <asp:ListItem Value="New Delhi">New Delhi </asp:ListItem>  
            <asp:ListItem Value="Greater Noida">Greater Noida</asp:ListItem>  
            <asp:ListItem Value="NewYork">NewYork</asp:ListItem>  
            <asp:ListItem Value="Paris">Paris</asp:ListItem>  
            <asp:ListItem Value="London">London</asp:ListItem>  
            </asp:DropDownList>
    </div>
     <div class="form-group col-md-3">
      <label>Available For</label>
         <asp:DropDownList ID="availablefor"  class="form-control" runat="server">
           <asp:ListItem Value="Resale">Resale</asp:ListItem>  
            <asp:ListItem Value="New Delhi">New Delhi </asp:ListItem>  
            <asp:ListItem Value="Greater Noida">Greater Noida</asp:ListItem>  
            <asp:ListItem Value="NewYork">NewYork</asp:ListItem>  
            <asp:ListItem Value="Paris">Paris</asp:ListItem>  
            <asp:ListItem Value="London">London</asp:ListItem>  
          </asp:DropDownList>
    </div>
  </div>

  <div class="form-group">
    <label>Google Map Url</label>
    <textarea Class="form-control" name="googlemapUrl" rows="5"></textarea>
    </div>

<div class="form-group">
    <label>Short Discription</label>
    <asp:TextBox ID="shortdiscription" CssClass="form-control" runat="server"></asp:TextBox>
 </div>

<div class="form-group">
<label>Long Description</label>
<textarea name="LD1"></textarea>               
</div>

<div class="form-group">
<label>Near By Places</label>
<textarea name="NBP"></textarea>               
</div>

<div class="form-row">
    <div class="form-group col-md-4">
      <label>Landmark</label>
       <asp:TextBox ID="landmark" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-4">
      <label>City</label>
      <asp:TextBox ID="city" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-4">
      <label>Pincode</label>
      <asp:TextBox ID="pincode" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
 </div>

  <div class="form-group">
<label>Full Address</label>
<textarea Class="form-control" name="fulladdress" rows="2" placeholder="Address"></textarea>
  </div>

     
      <asp:Button ID="Button2" runat="server" onClick="ClickPost" Text="Button" /> 
    <asp:TextBox ID="result" runat="server"></asp:TextBox>
                </form>
                </div>
                <!-- /.container-fluid -->
                    
            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
           <!--#include file="footer.aspx"-->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

   

    
    <!-- Bootstrap core JavaScript-->
    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="assets/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="assets/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
<script src="assets/js/demo/chart-pie-demo.js"></script>
    <script src="assets/js/demo/chart-area-demo.js"></script>
    <script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
    CKEDITOR.replace('LD1');
    CKEDITOR.replace( 'NBP' );
</script>
</body>

</html>

