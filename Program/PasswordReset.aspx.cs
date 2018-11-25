using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;

public partial class PasswordReset : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void btnPass_Click(object sender, EventArgs e)
    //{
    //    using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
    //    {
    //        string select = "SELECT FirstName FROM Contact WHERE Email = @Email";
    //        connection.Open();
    //        using (SqlCommand command = new SqlCommand())
    //        {
    //            command.Connection = connection;
    //            command.CommandType = CommandType.Text;
    //            command.CommandText = select;

    //            SqlParameter email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
    //            email.Value = txtEmail.Text.Trim().ToString();
    //            command.Parameters.Add(email);

    //            DataSet dsPwd = new DataSet();
    //            SqlDataAdapter adapter = new SqlDataAdapter(command);
    //            adapter.Fill(dsPwd);
    //            connection.Close();

    //            if (dsPwd.Tables[0].Rows.Count > 0)
    //            {
    //                MailMessage loginInfo = new MailMessage();
    //                loginInfo.To.Add(txtEmail.Text.ToString());
    //                loginInfo.From = new MailAddress("fernando.muzo895@gmail.com");
    //                loginInfo.Subject = "Wildlife Center - Password Reset Link";

    //                loginInfo.Body = "First Name: " + dsPwd.Tables[0].Rows[0]["FirstName"];

    //                loginInfo.IsBodyHtml = true;
    //                SmtpClient smtp = new SmtpClient();
    //                smtp.Host = "smtp.outlook-office365.com";
    //                smtp.Port = 587;
    //                smtp.EnableSsl = true;
    //                smtp.Credentials = new System.Net.NetworkCredential("muzoef@dukes.jmu.edu", "%$RNGR_grp16%");
    //                smtp.Send(loginInfo);
    //                lblMessage.Text = "Password was sent!";
    //            }
    //            else
    //            {
    //                lblMessage.Text = "Email Address not registered.";
    //            }
    //        }
    //    }
    //}
    protected void PasswordRecovery1_SendingEmai(object sender, EventArgs e)
    {

    }
}