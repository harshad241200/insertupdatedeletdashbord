<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" EnableEventValidation="false" Inherits="shivani81acre.Admin.edit" %>
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
                <div class="RepeatersFind">
                <asp:Repeater ID="Repeaters1" runat="server">
                    <ItemTemplate>
                    <div class="container-fluid">
                    <form runat="server">
      <div class="form-group">
    <label>Property Name</label>
   <asp:TextBox ID="pname" CssClass="form-control" Text='<%#Eval("propertyname")%>' runat="server"></asp:TextBox>
  </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Minimum Price</label>
        <asp:TextBox ID="pmin" CssClass="form-control" Text='<%#Eval("minimumprice")%>' runat="server"></asp:TextBox>
    </div>
        
    <div class="form-group col-md-6">
      <label for="inputPassword4">Maximum Price</label>
        <asp:TextBox ID="pmax" CssClass="form-control" Text='<%#Eval("maximumprice")%>' runat="server"></asp:TextBox>
    </div>
       
  </div>

<div class="form-row">
    <div class="form-group col-md-3">
      <label for="inputEmail4">Facebook Url</label>
      <asp:TextBox ID="facebookUrl" CssClass="form-control" Text='<%#Eval("facebookurl")%>' runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-3">
      <label for="inputPassword4">Instargram Url</label>
      <asp:TextBox ID="instagramurl" CssClass="form-control" Text='<%#Eval("instargramurl")%>' runat="server"></asp:TextBox>
    </div>
        <div class="form-group col-md-3">
      <label for="inputEmail4"> Whatsapp No</label>
      <asp:TextBox ID="whatsappno" CssClass="form-control" Text='<%#Eval("Whatsappno")%>' runat="server"></asp:TextBox>
    </div>
     <div class="form-group col-md-3">
      <label for="inputEmail4"> Youtube View Url</label>
      <asp:TextBox ID="youtubeviewUrl" CssClass="form-control" Text='<%#Eval("youtubeviewurl")%>' runat="server"></asp:TextBox>
    </div>
  </div>
  
 <div class="form-row">
    <div class="form-group col-md-3">
      <label for="inputEmail4">Area in Sqft</label>
      <asp:TextBox ID="areainsqft" CssClass="form-control" Text='<%#Eval("AreainSqft")%>' runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-3">
      <label for="inputPassword4">No of Bedroom</label>
      <asp:TextBox ID="noofbedRoom" CssClass="form-control" Text='<%#Eval("noofbedroom")%>' runat="server"></asp:TextBox>
    </div>
        <div class="form-group col-md-3">
      <label for="inputEmail4">No of Bathroom</label>
      <asp:TextBox ID="noofbathRoom" CssClass="form-control" Text='<%#Eval("noofbathroom")%>' runat="server"></asp:TextBox>
    </div>
     <div class="form-group col-md-3">
      <label for="inputEmail4">Garage</label>
      <asp:TextBox ID="garage" CssClass="form-control" Text='<%#Eval("Garage")%>' runat="server"></asp:TextBox>
  </div>
     </div>
     <div class="form-row">
    <div class="form-group col-md-3">
      <label>List Property For</label>
      <input type="hidden" name="propertyfor" value='<%#Eval("ListPropertyFor")%>' />
      <asp:DropDownList ID="propertyfor"  class="form-control propertyfor" runat="server">
        <asp:ListItem Value="For Sale" >For Sale</asp:ListItem>  
            <asp:ListItem Value="New Delhi">New Delhi </asp:ListItem>  
            <asp:ListItem Value="Greater Noida">Greater Noida</asp:ListItem>  
            <asp:ListItem Value="NewYork">NewYork</asp:ListItem>  
            <asp:ListItem Value="Paris">Paris</asp:ListItem>  
            <asp:ListItem Value="London">London</asp:ListItem>  
      </asp:DropDownList>
    </div>
    <div class="form-group col-md-3">
      <label>I have a</label>
        <input type="hidden" name="ihavea" value='<%#Eval("Ihavea")%>' />
        <asp:DropDownList ID="ihavea"  class="form-control ihavea" runat="server">
            <asp:ListItem Value="Residential">Residential</asp:ListItem>  
            <asp:ListItem Value="New Delhi">New Delhi </asp:ListItem>  
            <asp:ListItem Value="Greater Noida">Greater Noida</asp:ListItem>  
            <asp:ListItem Value="NewYork">NewYork</asp:ListItem>  
            <asp:ListItem Value="Paris">Paris</asp:ListItem>  
            <asp:ListItem Value="London">London</asp:ListItem> 
            <asp:ListItem Value="Residetial">Apartment</asp:ListItem> 
        </asp:DropDownList>
    </div>
     <div class="form-group col-md-3">
            <label>Property Type</label>
            <input type="hidden" name="propertytype" value='<%#Eval("PropertyType")%>' />
            <asp:DropDownList ID="propertytype"  class="form-control propertytype" runat="server">
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
         <input type="hidden" name="availablefor" value='<%#Eval("AvailableFor")%>' />
         <asp:DropDownList ID="availablefor"  class="form-control availablefor" runat="server">
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
    <textarea Class="form-control" name="googlemapUrl" rows="5"><%#Eval("GoogleMapUrl")%></textarea>
    </div>

<div class="form-group">
    <label>Short Discription</label>
    <asp:TextBox ID="shortdiscription" Text='<%#Eval("ShortDiscription")%>' CssClass="form-control" runat="server"></asp:TextBox>
 </div>

<div class="form-group">
<label>Long Description</label>
<textarea name="LD1"><%#Eval("LongDescription")%></textarea>               
</div>

<div class="form-group">
<label>Near By Places</label>
<textarea name="NBP"><%#Eval("NearByPlaces")%></textarea>               
</div>

<div class="form-row">
    <div class="form-group col-md-4">
      <label>Landmark</label>
       <asp:TextBox ID="landmark" Text='<%#Eval("Landmark")%>' CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-4">
      <label>City</label>
      <asp:TextBox ID="city" Text='<%#Eval("City")%>' CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-4">
      <label>Pincode</label>
      <asp:TextBox ID="pincode" Text='<%#Eval("Pincode")%>' CssClass="form-control" runat="server"></asp:TextBox>
    </div>
 </div>

  <div class="form-group">
<label>Full Address</label>
<textarea Class="form-control" name="fulladdress" rows="2" placeholder="Address"><%#Eval("FullAddress")%></textarea>
  </div>

     
      <asp:Button ID="Button3" OnClick="editdata" CssClass="btn btn-primary" runat="server"  Text="Edit" /> 
    
                </form>
                </div>

                    </ItemTemplate>

                </asp:Repeater>
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
    CKEDITOR.replace('NBP');

    $(document).ready(function () {
        let propertyfor = document.querySelector("input[name='propertyfor']").defaultValue;
        $(".propertyfor").val(propertyfor)

        let ihave = document.querySelector("input[name='ihavea']").defaultValue;
        console.log('ihave:::::::::>',ihave)
        $(".ihavea").val(ihave)

        let propertytype = document.querySelector("input[name='propertytype']").defaultValue;
        $(".propertytype").val(propertytype)

         let availablefor = document.querySelector("input[name='availablefor']").defaultValue;
        $(".availablefor").val(availablefor)
    })

</script>

                             
</body>

</html>


