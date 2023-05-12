using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DebiHotelReservation
{
    public partial class addRoom : System.Web.UI.Page
    {
        DebiServiceReference.WebServiceSoapClient obj = new DebiServiceReference.WebServiceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Text = obj.autoIncrementRoomId();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string value = obj.addRoomDetails(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, DropDownList1.SelectedValue);
            int record = Int32.Parse(value);
            if (record > 1)
            {
                Response.Write("<script>alert('Stock Added Failed!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Stock Added Successfully!')</script>");
                Response.Redirect("addRoom.aspx");

            }
        }

        
    }
}