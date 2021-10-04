<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewdata.aspx.cs" Inherits="shivani81acre.Admin.viewdata" %>
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
                           <input type="hidden" id="hiddenid" />

                    <table id="usertable" border='1' >
                   <asp:Repeater id="Repeaters1" runat="server">
                       <HeaderTemplate>
                           <thead>
                               <tr>
                               <th >id</th>
                               <th>Property Name</th>                            
                             <th>Whatsapp Number</th>
                             <th>Action</th>
                                   </tr>
                           </thead>
                       </HeaderTemplate>
                       <ItemTemplate>
                       
                            <tr>
                                <td><%#Eval("id") %></td>
                            <td><%#Eval("propertyname") %></td>
                            <td><%#Eval("minimumprice") %></td>
                  <%--          <td><%#Eval("maximumprice") %></td>
                            <td><%#Eval("facebookurl") %></td>
                            <td><%#Eval("instargramurl") %></td>
                            <td><%#Eval("Whatsappno") %></td>
                            <td><%#Eval("youtubeviewurl") %></td>
                            <td><%#Eval("AreainSqft") %></td>
                            <td><%#Eval("noofbedroom") %></td>
                            <td><%#Eval("noofbathroom") %></td>
                            <td><%#Eval("Garage") %></td>
                            <td><%#Eval("ListPropertyFor") %></td>
                            <td><%#Eval("Ihavea") %></td>
                            <td><%#Eval("PropertyType") %></td>
                            <td><%#Eval("AvailableFor") %></td>
                            <td><%#Eval("GoogleMapUrl") %></td>
                            <td><%#Eval("ShortDiscription") %></td>
                            <td><%#Eval("LongDescription") %></td>
                            <td><%#Eval("NearByPlaces") %></td>
                            <td><%#Eval("Landmark") %></td>
                            <td><%#Eval("City") %></td>
                            <td><%#Eval("Pincode") %></td>
                            <td><%#Eval("FullAddress") %></td>
                            <td><%#Eval("slug") %></td>--%>
                            <td><button class="btn btn-success "><a href="edit.aspx?id= <%#Eval("id") %>">Edit</a></button>
                            <button class="btn btn-danger"  id="deleteuser" data-id="<%#Eval("id") %>">Delete</button>
                            </td>
                                </tr>
                        
                       </ItemTemplate>     
                   </asp:Repeater>
                         </table>
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

   

      <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" ></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/js/jquery.dataTables.min.js"></script>
<script>
    CKEDITOR.replace('LD1');
    CKEDITOR.replace('NBP');
    $(document).ready(function () {
          $('#usertable').DataTable();
        $("#usertable").on('click', '#deleteuser', function () {
            let hiddenid = $(this).attr("data-id")
            $.ajax({
                method: "POST",
                contentType: "application/json; charset=utf-8",
                url: "WebService1.asmx/Delete",
                data: "{'id':'" + hiddenid + "'}",
                success: function (resp) {
                    console.log('Response=====>', resp)
                    swal("Deleted Successfully !", "Your data deleted", "success").then(function () {
                        location.reload()
                    });
                },
                dataType: "json"
            });
        })
    })
</script>
</body>

</html>


