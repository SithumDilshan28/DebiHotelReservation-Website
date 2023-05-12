using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace DebiHotelReservation
{
    /// <summary>
    /// Summary description for WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {
        SqlConnection sqlCon = null;
        public SqlConnection getConnection()
        {
            try
            {
                sqlCon = new SqlConnection("Data Source=ALPHA-MEN\\SQLEXPRESS;Initial Catalog=\"Debi Database\";Integrated Security=True");
                sqlCon.Open();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error  Connecting  to Database " + ex);
            }
            return sqlCon;
        }

        [WebMethod]
        public string autoIncrementRoomId()
        {
            string roomId = null;

            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("Select id from addRoom", sqlCon);
                SqlDataReader dr = cmd.ExecuteReader();
                string id = "";
                bool records = dr.HasRows;
                if (records)
                    while (dr.Read())
                    {
                        id = dr[0].ToString();
                    }
                string idString = id.Substring(1);
                int CTR = Int32.Parse(idString);
                if (CTR >= 1 && CTR < 9)
                {
                    CTR = CTR + 1;
                    roomId = "R00" + CTR;
                }
                else if (CTR >= 10 && CTR < 99)
                {
                    CTR = CTR + 1;
                    roomId = "R0" + CTR;
                }
                else if (CTR > 99)
                {
                    CTR = CTR + 1;
                    roomId = "R" + CTR;
                }
                else
                {
                    roomId = "R001";
                }
                dr.Close();
            }
            catch (Exception e1)
            {
                roomId = e1.ToString();
            }
            return roomId;
        }

        [WebMethod]
        public string addRoomDetails(String id, String name, string description, string price, string country, string city, string package)
        {
            int temp = 0;
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("insert into addRoom values ('" + id + "','" + name + "','" + description + "','" + price + "','" + country + "','" + city + "','" + package + "')", sqlCon);
                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }

        [WebMethod]
        public string registerHotel(string name, string description, string location, string number, string sigupPass, string signupCPass)
        {
            int temp = 0;
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("insert into addHotel values ('" + name + "'," + "'" + description + "','" + location + "','" + number + "','" + sigupPass + "','" + signupCPass + "')", sqlCon);
                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }

        [WebMethod]
        public DataSet SearchRoom(string id)
        {
            DataSet ds = new DataSet();
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("Select * from addRoom where id='" + id + "'", sqlCon);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds, "Stock");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error Stock" + ex);
            }
            return ds;
        }


        [WebMethod]
        public bool updateRoom(string id, string name, string desc, string price, string country, string city)
        {
            bool records = false;
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("update addRoom set name= '" + name + "' , description= '" +
                    desc + "' ,  price= '" + price + "',  country= '" + country + "'  ,  city= '" + city + "' where id='" + id + "'", sqlCon);
                SqlDataReader dr = cmd.ExecuteReader();
                records = dr.HasRows;
                dr.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Update Stock" + ex);
            }
            return records;
        }


        [WebMethod]
        public DataSet FindRoomCountry(string country)
        {
            DataSet ds = new DataSet();
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("Select * from addRoom where country='" + country + "'", sqlCon);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds, "Stock");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error Stock" + ex);
            }
            return ds;
        }

        [WebMethod]
        public DataSet FindRoomCity(string city)
        {
            DataSet ds = new DataSet();
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("Select * from addRoom where city='" + city + "'", sqlCon);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds, "Stock");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error Stock" + ex);
            }
            return ds;
        }

        [WebMethod]
        public DataSet FindRoomName(string name)
        {
            DataSet ds = new DataSet();
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("Select * from addRoom where name='" + name + "'", sqlCon);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds, "Stock");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error Stock" + ex);
            }
            return ds;
        }

        [WebMethod]
        public bool deleteRoom(string id)
        {
            bool records = false;
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("delete addRoom where id='" + id + "'", sqlCon);
                SqlDataReader dr = cmd.ExecuteReader();
                records = dr.HasRows;
                dr.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Update Stock" + ex);
            }
            return records;
        }

    }
}
