using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dashboardscrud.Content
{
    public partial class Addproperty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ClickPost(object sender, EventArgs e)
        {
            SqlConnection con = null;
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            try
            {
                string propertyname = pname.Text;
                string minimumprice = pmin.Text;
                string maximumprice = pmax.Text;
                string facebookurl = facebookUrl.Text;
                string instargramurl = instagramurl.Text;
                string Whatsappno = whatsappno.Text;
                string youtubeviewurl = youtubeviewUrl.Text;
                string AreainSqft = areainsqft.Text;
                string noofbedroom = noofbedRoom.Text;
                string noofbathroom = noofbathRoom.Text;
                string Garage = garage.Text;
                string ListPropertyFor = propertyfor.SelectedValue;
                string Ihavea = ihavea.SelectedValue;
                string PropertyType = propertytype.SelectedValue;
                string AvailableFor = availablefor.SelectedValue;
                string GoogleMapUrl = Request.Form["googlemapUrl"];
                string ShortDiscription = shortdiscription.Text;
                string LongDescription = Request.Form["LD1"];
                string NearByPlaces = Request.Form["NBP"];
                string Landmark = landmark.Text;
                string City = city.Text;
                string Pincode = pincode.Text;
                string FullAddress = Request.Form["fulladdress"];
                string slug = propertyname.Replace(" ", "-").Replace(",", "-").ToLower();
                string SaveLocation = "";
                string newlocation = "";

                Guid g = Guid.NewGuid();
                //Console.WriteLine(g);

                if ((uphoto.PostedFile != null) && (uphoto.PostedFile.ContentLength > 0))
                {
                    string fn = System.IO.Path.GetFileName(uphoto.PostedFile.FileName);
                    SaveLocation = Server.MapPath("upload") + "\\" + g + fn;
                    newlocation = "\\" + "upload" + "\\" + g + fn;
                    uphoto.PostedFile.SaveAs(SaveLocation);
                }

                con = new SqlConnection(strcon);
                string sql = "insert into Addproperty14(propertyname,minimumprice,maximumprice,uploadphoto,facebookurl,instargramurl,Whatsappno,youtubeviewurl,AreainSqft,noofbedroom,noofbathroom,Garage,ListPropertyFor,Ihavea,PropertyType,AvailableFor,GoogleMapUrl,ShortDiscription,LongDescription,NearByPlaces,Landmark,City,Pincode,FullAddress,slug) values('" + propertyname + "','" + minimumprice + "','" + maximumprice + "','" + newlocation + "','" + facebookurl + "','" + instargramurl + "','" + Whatsappno + "','" + youtubeviewurl + "','" + AreainSqft + "','" + noofbedroom + "','" + noofbathroom + "','" + Garage + "','" + ListPropertyFor + "','" + Ihavea + "','" + PropertyType + "','" + AvailableFor + "','" + GoogleMapUrl + "','" + ShortDiscription + "','" + LongDescription + "','" + NearByPlaces + "','" + Landmark + "','" + City + "','" + Pincode + "','" + FullAddress + "','" + slug + "')";

                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                int Status = cmd.ExecuteNonQuery();
                if (Status > 0)
                {
                    Console.WriteLine("success");
                    // result.Text="successfully inserted";
                    // Response.Write("<script>alert('Inserted successfully!')</script>");
                    Response.Redirect("viewdata.aspx");
                }
                else
                {
                    Console.WriteLine("fail");
                    //result.Text = "not inserted";
                    //Response.Write("<script>alert('Enable To Insert')</script>");
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}