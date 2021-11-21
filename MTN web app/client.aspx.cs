using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace MTN_web_app
{
    public partial class client : System.Web.UI.Page
    {
        MySqlCommand cmd;
        String queryStr;
        MySql.Data.MySqlClient.MySqlConnection conn2 = new MySql.Data.MySqlClient.MySqlConnection
            (@"Data Source=localhost;port=3306;Initial Catalog=mtn;User Id=root;Password=''");

        protected void Page_Load(object sender, EventArgs e)
        {
            a.Text = "";
            b.Text = "";
            c.Text = "";
            d.Text = "";
            f.Text = "";
            ii.Text = "";
        }

        protected void cmdclear_Click(object sender, EventArgs e) 
        {
            clr();
        }

        protected void cmdupdate_Click(object sender, EventArgs e)
        {
            conn2.Open();
            MySqlCommand cmd2 = conn2.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "update client set RegNo='" + a.Text + "',Name='" + c.Text +
           "' where RegNo='" + a.Text + "'";
            cmd2.ExecuteNonQuery();
            conn2.Close();
            Response.Write("Your Data has been Updated Successfully !");
            clr();
        }

        //public override string ConnectionString { get; set; }

        protected void cmdsave_Click(object sender, EventArgs e)
        {
            String ConnString =
        System.Configuration.ConfigurationManager.ConnectionStrings["MtnAppConnString"].
        ToString();
            MySqlConnection conn = new MySql.Data.MySqlClient.MySqlConnection(ConnString);
            conn.Open();
            String queryStr = "";

            //HERE U MUST NAME ALL OUR TEXTBOXES GOING TO BE USED IN SAVING DATA E.G FOR REGNO(ID = a), NAME TEXTBOX(ID = b),Contact(ID = c) etc
              queryStr = "INSERT INTO mtn.client(RegNo,Name,Contact,Item,AmountPaid,DOR)" +
              "VALUES('" + a.Text + "','" + b.Text + "','" + c.Text + "','" + d.Text +
             "','" + f.Text + "','" + ii.Text + "')";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.ExecuteReader();
            conn.Close();
            Response.Write("Your Data has been saved successfully !");
            //ms.Text = "Your Data has been saved successfully !";
            clr();
        }

        private void clr()
        {
            a.Text = "";
            b.Text = "";
            c.Text = "";
            d.Text = "";

            f.Text = "";
            ii.Text = "";

        }

        protected void cmdviewdata_Click(object sender, EventArgs e)
        {        
            displaydata();
        }
        private void displaydata()
        {
            String ConnString =
           System.Configuration.ConfigurationManager.ConnectionStrings["MtnAppConnString"].
           ToString();

            MySqlConnection conn = new MySqlConnection(ConnString);
            conn.Open();
            queryStr = "";
            queryStr = "select * from client";

            cmd = new MySqlCommand(queryStr, conn);
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);

            //GridView.DataSource = dt;
            //GridView.DataBind();
            conn.Close();
        }

        protected void cmddelete_Click(object sender, EventArgs e)
        {
            conn2.Open();
            MySqlCommand cmd2 = conn2.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "delete from client where RegNo='" + a.Text + "'";
            //THIS IS THE CODE WHICH DELETES USING OUR PRIMARY KEY FIELD REGNO=" THE REGNO U WILL ENTER IN TEXT a
            cmd2.ExecuteNonQuery();
            conn2.Close();
            Response.Write("Your Data has been Delete Permanently !"); 
            // TRY TO REMOVE THIS COMMENT AND SEE WHAT IT DOES
               // ms.Text = "Your Data has been deleted successfully !";
                clr();

        }
    }
}