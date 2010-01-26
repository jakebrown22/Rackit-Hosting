using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        // sql statement
        string sSQL = "select * from Customers where username = @username and password = @password";

        // connection string
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Customers"].ToString());

        try
        {
            // open the connection string
            conn.Open();

            // send the sql command
            System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand(sSQL, conn);

            // assign parameters
            comm.Parameters.AddWithValue("@username", Login1.UserName);
            comm.Parameters.AddWithValue("@password", Login1.Password);

            // execute the reader
            System.Data.SqlClient.SqlDataReader dr = comm.ExecuteReader();

            // authorize the user
            if (dr.HasRows)
            {
                System.Web.Security.FormsAuthentication.SetAuthCookie(Login1.UserName, false);
                Response.Redirect("ControlPanel.aspx");
            }
        }
        catch (Exception ex)
        {

        }
        finally
        {
            conn.Close();
        }
    }
}
