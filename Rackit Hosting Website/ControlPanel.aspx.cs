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
using System.IO;
using System.Data.SqlClient;

public partial class ControlPanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        // open command prompt and set parameters
        System.Diagnostics.ProcessStartInfo info = new System.Diagnostics.ProcessStartInfo("cmd.exe");
        info.RedirectStandardError = true;
        info.RedirectStandardInput = true;
        info.UseShellExecute = false;
        info.RedirectStandardOutput = true;

        System.Diagnostics.Process cmdPrompt = System.Diagnostics.Process.Start(info);
        StreamWriter swProcess = cmdPrompt.StandardInput;
        StreamReader srProcess = cmdPrompt.StandardOutput;

        // pre set ip and port values
        string ip = "";
        string port = "";

        // get customer ip and port
        string sSQL = "select ip, port FROM customers WHERE username=@username";
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Customers"].ToString());
        try
        {
            // open connection string and execute command
            conn.Open();
            System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand(sSQL, conn);

            comm.Parameters.AddWithValue("@username", System.Web.HttpContext.Current.User.Identity.Name);

            // put the ip into a data reader
            System.Data.SqlClient.SqlDataReader dr = comm.ExecuteReader();
            while (dr.Read())
            {
                ip = dr.GetString(0);
                port = dr.GetString(1);
            }

        }
        catch(Exception ex)
        {

        }
        finally
        {
        conn.Close();
        }

        // command to execute
        string command = "@echo off" + System.Environment.NewLine +
            "cls" + System.Environment.NewLine +
            "echo Protecting srcds from crashes..." + System.Environment.NewLine +
            "echo If you want to close srcds and this script, close the srcds window and type Y depending on your language followed by Enter." + System.Environment.NewLine +
            "title srcds.com Watchdog" + System.Environment.NewLine +
            "cd " +ip + System.Environment.NewLine +
            ":srcds" + System.Environment.NewLine +
            "echo (%time%) srcds started." + System.Environment.NewLine +
            "start /wait srcds.exe -console -nocrashdialog -game cstrike +map aim_ak-colt +fps_max 500 -tickrate 100 +maxplayers 24 +ip " + ip + " -port " + port + System.Environment.NewLine +
            "echo (%time%) WARNING: srcds closed or crashed, restarting" + System.Environment.NewLine +
            "goto srcds";
            
        // execute command
        swProcess.Write(command);
    }
   
}
