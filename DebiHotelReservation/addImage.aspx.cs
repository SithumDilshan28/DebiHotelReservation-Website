using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DebiHotelReservation
{
    public partial class addImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str));
                string Image = "~/Upload/" + str.ToString();

                SqlConnection con = new SqlConnection(@"Data Source=ALPHA-MEN\SQLEXPRESS;Initial Catalog=""Debi Database"";Integrated Security=True");
                SqlCommand cmd = new SqlCommand("insert into photo values(@Image)", con);
                cmd.Parameters.AddWithValue("Image", Image);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Label1.Text = "Image Uploaded";
                Label1.ForeColor = System.Drawing.Color.ForestGreen;
            }

            else
            {
                Label1.Text = "Please Upload your Image";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}