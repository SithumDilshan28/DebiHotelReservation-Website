using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DebiHotelReservation
{
    public partial class reservation : System.Web.UI.Page
    {
        DebiServiceReference.WebServiceSoapClient obj = new DebiServiceReference.WebServiceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = obj.FindRoomCountry(TextBox2.Text);
            GridView1.DataSource = obj.FindRoomCity(TextBox3.Text);
            GridView1.DataSource = obj.FindRoomName(TextBox1.Text);
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}