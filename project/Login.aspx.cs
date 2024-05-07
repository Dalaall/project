using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace project
{
    public partial class _222 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\PlateDB.mdf;Integrated Security=True"))
            {
                string AdminQuery = "SELECT COUNT(*) FROM [Admin] WHERE AUserName = @Username AND APassword = @Password";
                string BidderQuery = "SELECT COUNT(*) FROM [Bidder] WHERE BUsername = @Username AND BPassword = @Password";

                SqlCommand AdminCmd = new SqlCommand(AdminQuery, con);
                AdminCmd.Parameters.AddWithValue("@Username", TextBox1.Text);
                AdminCmd.Parameters.AddWithValue("@Password", TextBox2.Text);

                SqlCommand BidderCmd = new SqlCommand(BidderQuery, con);
                BidderCmd.Parameters.AddWithValue("@Username", TextBox1.Text);
                BidderCmd.Parameters.AddWithValue("@Password", TextBox2.Text);

                DataTable dt = new DataTable();
                DataTable Bidder = new DataTable();

                using (SqlDataAdapter sda = new SqlDataAdapter(AdminCmd))
                {
                    sda.Fill(dt);
                }

                using (SqlDataAdapter sd = new SqlDataAdapter(BidderCmd))
                {
                    sd.Fill(Bidder);
                }

                if (dt.Rows[0][0].ToString() == "1" && Bidder.Rows.Count == 0)
                {
                    SqlCommand cmd = new SqlCommand("SELECT BidderID FROM [Bidder] WHERE BUsername = @Username", con);
                    cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
                    con.Open();
                    int bidderID = (int)cmd.ExecuteScalar();
                    con.Close();
                    Session["BidderID"] = TextBox1.Text;
                    Response.Redirect("Product.aspx");
                }
                else if (dt.Rows[0][0].ToString() == "1")
                {
                    SqlCommand cm = new SqlCommand("SELECT AdminID FROM [Admin] WHERE AUserName = @Username", con);
                    cm.Parameters.AddWithValue("@Username", TextBox1.Text);
                    con.Open();
                    int adminID = (int)cm.ExecuteScalar();
                    con.Close();
                    Session["AdminID"] = TextBox1.Text;
                    Response.Redirect("admin2.aspx");
                }
                else
                {
                    Label4.Visible = true;
                    Label4.Text = "Invalid Username/Password";
                }
            }
        }
    }
}           