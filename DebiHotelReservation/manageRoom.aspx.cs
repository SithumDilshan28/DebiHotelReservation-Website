using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DebiHotelReservation
{
    public partial class manageRoom : System.Web.UI.Page
    {
        DebiServiceReference.WebServiceSoapClient obj = new DebiServiceReference.WebServiceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = obj.SearchRoom(TextBox1.Text);
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            obj.updateRoom(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text);
            GridView1.DataSource = obj.SearchRoom(TextBox1.Text);
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}