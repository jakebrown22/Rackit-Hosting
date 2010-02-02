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
using System.Net.Mail;
using System.IO;
using System.Data.SqlClient;

public partial class Support : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void  btnSubmit_Click(object sender, EventArgs e)
    {
        //System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Customers"].ToString());
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Customers"].ToString());
        string sSQL = "select email FROM customers WHERE username=@username";
        string custEmail = "";
        string adminEmail = "info@rackithosting.com";
        try
        {


            // open connection string and execute command
            conn.Open();
            System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand(sSQL, conn);

            comm.Parameters.AddWithValue("@username", System.Web.HttpContext.Current.User.Identity.Name);

            // put the email into the datareader 
            System.Data.SqlClient.SqlDataReader dr = comm.ExecuteReader();
            while (dr.Read())
            {
                custEmail = dr.GetString(0);

            }
            MailMessage message = new MailMessage(custEmail, adminEmail, txtSubject.Text, txtBody.Text);

            SmtpClient emailClient = new SmtpClient("smtp.secureserver.net", 25);
            emailClient.Send(message);
            litStatus.Text = "Message Sent";

        }
        catch (Exception ex)
        {
            litStatus.Text = ex.ToString();

        }
        finally
        {
            conn.Close();
        }
        

    }
}


