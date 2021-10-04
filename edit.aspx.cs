using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace shivani81acre.Admin
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = null;            
            string sql = "select * from addproperty where id='"+id+"'";
            con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sql, con);           
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeaters1.DataSource = dt;
            Repeaters1.DataBind();
            con.Close();
        }
        protected void editdata(object sender, EventArgs e)
        {
            
            try
            {
                string id = Request.QueryString["id"];//getting value from url

                RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
                string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

                string pname = (item.FindControl("pname") as TextBox).Text;
                string pmin = (item.FindControl("pmin") as TextBox).Text;
                string pmax= (item.FindControl("pmax") as TextBox).Text;
                string facebookUrl = (item.FindControl("facebookUrl") as TextBox).Text;
                string instagramurl = (item.FindControl("instagramurl") as TextBox).Text;
                string whatsappno = (item.FindControl("whatsappno") as TextBox).Text;
                string youtubeviewUrl = (item.FindControl("youtubeviewUrl") as TextBox).Text;
                string areainsqft = (item.FindControl("areainsqft") as TextBox).Text;
                string noofbedRoom = (item.FindControl("noofbedRoom") as TextBox).Text;
                string noofbathRoom = (item.FindControl("noofbathRoom") as TextBox).Text;
                string garage = (item.FindControl("garage") as TextBox).Text;
                string propertyfor = (item.FindControl("propertyfor") as DropDownList).Text;
                string ihavea = (item.FindControl("ihavea") as DropDownList).Text;
                string propertytype = (item.FindControl("propertytype") as DropDownList).Text;
                string availablefor = (item.FindControl("availablefor") as DropDownList).Text;
                string GoogleMapUrl = Request.Form["googlemapUrl"];
                string shortdiscription = (item.FindControl("shortdiscription") as TextBox).Text;
                string LongDescription = Request.Form["LD1"];
                string NearByPlaces = Request.Form["NBP"];
                string landmark = (item.FindControl("landmark") as TextBox).Text;
                string city = (item.FindControl("city") as TextBox).Text;
                string pincode = (item.FindControl("pincode") as TextBox).Text;
                string FullAddress = Request.Form["fulladdress"];
                string slug = pname.Replace(" ", "-").Replace(",", "-").ToLower();

                string sql = "update addproperty set propertyname='"+ pname + "',minimumprice='"+ pmin + "',maximumprice='"+ pmax + "',facebookurl='"+ facebookUrl + "',instargramurl='"+ instagramurl + "',Whatsappno='"+ whatsappno + "',youtubeviewurl='"+ youtubeviewUrl + "',AreainSqft='"+ areainsqft + "',noofbedroom='"+ noofbedRoom + "',noofbathroom='"+ noofbathRoom + "',Garage='"+ garage + "',ListPropertyFor='"+ propertyfor + "',Ihavea='"+ ihavea + "',PropertyType='"+ propertytype + "',AvailableFor='"+ availablefor + "',GoogleMapUrl='"+ GoogleMapUrl + "',ShortDiscription='"+ shortdiscription + "',LongDescription='"+ LongDescription + "',NearByPlaces='"+ NearByPlaces + "',Landmark='"+ landmark + "',City='"+ city + "',Pincode='"+ pincode + "',FullAddress='"+ FullAddress + "',slug='"+ slug + "' where id = '" + id + "'";
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                int status = cmd.ExecuteNonQuery();
                if (status > 0)
                {
                    // result.Text = "Successfully inserted";                 
                    Response.Redirect("viewdata.aspx");
                }
                else
                {
                    Console.WriteLine("Enable");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }


        }

    }
}