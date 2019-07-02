using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Services;

namespace EduOpenDoor
{
    /// <summary>
    /// Summary description for AttendenceWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class AttendenceWebService : System.Web.Services.WebService
    {



        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
       // [WebMethod]
        //public string GetCourseName()
        //{



        //    string connetionString = null;
        //    SqlConnection connection;
        //    SqlCommand command;
        //    string sql = null;
        //    SqlDataReader dataReader;
        //    //connetionString = "Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password";
        //    // <!--<add name="OpenDoor_TestConnectionString" connectionString="Data Source=ANGLOSURVEY;Initial Catalog=EdubuildCollege;Integrated Security=True" providerName="System.Data.SqlClient" />-->

        //    // <!--<add name="OpenDoor_TestConnectionString" connectionString="Data Source=ANGLOSURVEY;Initial Catalog=EdubuildCollege;Integrated Security=True" providerName="System.Data.SqlClient" />-->


        //    // SqlConnection myConnection = new SqlConnection("server=ANGLOSURVEY;" + "Trusted_Connection=yes;" + "database=EdubuildCollege; " + "connection timeout=30");
        //    //"Server= ANGLOSURVEY; Database= EdubuildCollege;Integrated Security=SSPI;"
        //    connetionString = "Server=ANGLOSURVEY; Database= EdubuildCollege;Integrated Security=SSPI;";

        //    //connetionString = @"server=ANGLOSURVEY\Adminstrator;Trusted_Connection=yes;Initial Catalog=EdubuildCollege;";
        //    // connetionString = "Data Source=ANGLOSURVEY;Initial Catalog=EdubuildCollege;Integrated Security=True";
        //    sql = "use EdubuildCollege; select CourseName from Qualifications;";

        //    //string providerName;
        //    //providerName = "System.Data.SqlClient";
        //    connection = new SqlConnection(connetionString);
        //    // try
        //    // {
        //    string subject = "";
        //    connection.Open();
        //    command = new SqlCommand(sql, connection);
        //    // command = new SqlCommand(sql, myConnection);
        //    dataReader = command.ExecuteReader();
        //    while (dataReader.Read())
        //    {
        //        subject = subject + dataReader.GetValue(0) + ",";
        //        // MessageBox.Show(dataReader.GetValue(0) + " - " + dataReader.GetValue(1) + " - " + dataReader.GetValue(2));
        //    }
        //    dataReader.Close();
        //    command.Dispose();
        //    connection.Close();
        //    //}
        //    //  catch (Exception ex)
        //    //  {
        //    //MessageBox.Show("Can not open connection ! ");
        //    // }


        //    return subject;
        //}
        //[WebMethod]
        //public string Getlevel(string coursename)
        //{



        //    string connetionString = null;
        //    SqlConnection connection;
        //    SqlCommand command;
        //    string sql = null;
        //    SqlDataReader dataReader;
        //    //connetionString = "Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password";
        //    //connetionString = "Data Source=ANGLOSURVEY;Initial Catalog=OpenDoor_Test;Integrated Security=True";

        //    connetionString = "Server=ANGLOSURVEY; Database= EdubuildCollege;Integrated Security=SSPI;";

        //    sql = "select NQFLevel from Qualifications where CourseName='" + coursename + "'";
        //    connection = new SqlConnection(connetionString);
        //    // try
        //    // {
        //    string subject = "";
        //    connection.Open();
        //    command = new SqlCommand(sql, connection);
        //    dataReader = command.ExecuteReader();
        //    while (dataReader.Read())
        //    {
        //        subject = subject + dataReader.GetValue(0) + ",";
        //        // MessageBox.Show(dataReader.GetValue(0) + " - " + dataReader.GetValue(1) + " - " + dataReader.GetValue(2));
        //    }
        //    dataReader.Close();
        //    command.Dispose();
        //    connection.Close();
        //    //}
        //    //  catch (Exception ex)
        //    //  {
        //    //MessageBox.Show("Can not open connection ! ");
        //    // }


        //    return subject;
        //}
        //[WebMethod]
        //public string GetQualificationid(string coursename, string NQFLEVEL)
        //{



        //    string connetionString = null;
        //    SqlConnection connection;
        //    SqlCommand command;
        //    string sql = null;
        //    SqlDataReader dataReader;
        //    //connetionString = "Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password";
        //    // connetionString = "Data Source=ANGLOSURVEY;Initial Catalog=EdubuildCollege;Integrated Security=True";
        //    connetionString = "Server=ANGLOSURVEY; Database= EdubuildCollege;Integrated Security=SSPI;";

        //    sql = "select qual_id from Qualifications where CourseName='" + coursename + "'  AND NQFLevel='" + NQFLEVEL + "'";
        //    connection = new SqlConnection(connetionString);
        //    // try
        //    // {
        //    string subject = "";
        //    connection.Open();
        //    command = new SqlCommand(sql, connection);
        //    dataReader = command.ExecuteReader();
        //    while (dataReader.Read())
        //    {
        //        subject = subject + dataReader.GetValue(0) + ",";
        //        // MessageBox.Show(dataReader.GetValue(0) + " - " + dataReader.GetValue(1) + " - " + dataReader.GetValue(2));
        //    }
        //    dataReader.Close();
        //    command.Dispose();
        //    connection.Close();
        //    //}
        //    //  catch (Exception ex)
        //    //  {
        //    //MessageBox.Show("Can not open connection ! ");
        //    // }


        //    return subject;
        //}

        //[WebMethod]
        //public string GetSUBJECT(string qualificationid)
        //{



        //    string connetionString = null;
        //    SqlConnection connection;
        //    SqlCommand command;
        //    string sql = null;
        //    SqlDataReader dataReader;
        //    //connetionString = "Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password";
        //    //connetionString = "Data Source=ANGLOSURVEY;Initial Catalog=OpenDoor_Test;Integrated Security=True";

        //    connetionString = "Server=ANGLOSURVEY; Database= EdubuildCollege;Integrated Security=SSPI;";

        //    sql = "select SubjectCode,SubjectName from OP_Subjects where qual_id=" + qualificationid;
        //    connection = new SqlConnection(connetionString);
        //    // try
        //    // {
        //    string subject = "";
        //    connection.Open();
        //    command = new SqlCommand(sql, connection);
        //    dataReader = command.ExecuteReader();
        //    while (dataReader.Read())
        //    {
        //        subject = subject + dataReader.GetValue(1) + "-" + dataReader.GetValue(0) + ",";
        //        // MessageBox.Show(dataReader.GetValue(0) + " - " + dataReader.GetValue(1) + " - " + dataReader.GetValue(2));
        //    }
        //    dataReader.Close();
        //    command.Dispose();
        //    connection.Close();
        //    //}
        //    //  catch (Exception ex)
        //    //  {
        //    //MessageBox.Show("Can not open connection ! ");
        //    // }


        //    return subject;
        //}

        //public string Decrypt(string cipherText)
        //{
        //    string EncryptionKey = "MAKV2SPBNI99212";
        //    byte[] cipherBytes = Convert.FromBase64String(cipherText.Replace(" ", "+"));
        //    using (Aes encryptor = Aes.Create())
        //    {
        //        Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
        //        encryptor.Key = pdb.GetBytes(32);
        //        encryptor.IV = pdb.GetBytes(16);
        //        using (MemoryStream ms = new MemoryStream())
        //        {
        //            using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
        //            {
        //                cs.Write(cipherBytes, 0, cipherBytes.Length);
        //                cs.Close();
        //            }
        //            cipherText = Encoding.Unicode.GetString(ms.ToArray());
        //        }
        //    }
        //    return cipherText;
        //}

        ///// <summary>
        ///// This function is used to encrypt a string
        ///// </summary>
        ///// <param name="clearText">String value to be encrypted.</param>
        ///// <returns>clearText</returns>        

        //public string Encrypt(string clearText)
        //{
        //    string EncryptionKey = "MAKV2SPBNI99212";
        //    byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        //    using (Aes encryptor = Aes.Create())
        //    {
        //        Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
        //        encryptor.Key = pdb.GetBytes(32);
        //        encryptor.IV = pdb.GetBytes(16);
        //        using (MemoryStream ms = new MemoryStream())
        //        {
        //            using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
        //            {
        //                cs.Write(clearBytes, 0, clearBytes.Length);
        //                cs.Close();
        //            }
        //            clearText = Convert.ToBase64String(ms.ToArray());
        //        }
        //    }
        //    return clearText;
        //}
        [WebMethod]
        public int AuthenticateUser(string userName, string passWord)
        {

            SqlConnection connection;
            SqlCommand command;
            string sql = null;
            SqlDataReader dataReader;

            var connetionString = System.Configuration.ConfigurationManager.ConnectionStrings["Nacosa_TestConnectionString"].ConnectionString;
            // string connetionString = null;
            //connetionString = "Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password";
            // connetionString = "Data Source=ANGLOSURVEY;Initial Catalog=EdubuildCollege;Integrated Security=True"ES3SRV\ES3PPROD2012;
            // connetionString = "Data Source=ES3SRV;Initial Catalog=NACOSA;Integrated Security=True; ";
            // connetionString = "Server=ES3SRV\ES3PPROD2012; Database= NACOSA;Integrated Security=SSPI;";

            sql = "select id from Users where uname='" + userName + "' and password='" + passWord + "'";
            connection = new SqlConnection(connetionString);
            // try
            // {
            int userID = 0;
            connection.Open();
            command = new SqlCommand(sql, connection);
            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                userID = int.Parse(dataReader.GetValue(0).ToString());
                // MessageBox.Show(dataReader.GetValue(0) + " - " + dataReader.GetValue(1) + " - " + dataReader.GetValue(2));
            }
            dataReader.Close();
            command.Dispose();
            connection.Close();
            //}
            //  catch (Exception ex)
            //  {
            //MessageBox.Show("Can not open connection ! ");
            // }
            return userID;


        }
        //      SELECT TOP 1000 [Att_Id]
        //    ,[StudentNo]
        //    ,[AttedanceDate]
        //    ,[SubLecturer]
        //FROM [EdubuildCollege].[dbo].[OP_AttendanceRegister]


       [WebMethod]
        public string InsertRegister(string Name, string Surname, string IDorPassport, int Age, string Address, string FingerCode, string GPSCoordination, string region)
        {


            DateTime AttDate = DateTime.Now;
            
            SqlConnection connection;
            SqlCommand command;
            string sql = null;
            SqlDataReader dataReader;

             var connetionString = System.Configuration.ConfigurationManager.ConnectionStrings["Nacosa_TestConnectionString"].ConnectionString;
            // string connetionString = null;
            //connetionString = "Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password";
            // connetionString = "Data Source=ANGLOSURVEY;Initial Catalog=EdubuildCollege;Integrated Security=True"ES3SRV\ES3PPROD2012;
           // connetionString = "Data Source=ES3SRV;Initial Catalog=NACOSA;Integrated Security=True; ";
           // connetionString = "Server=ES3SRV\ES3PPROD2012; Database= NACOSA;Integrated Security=SSPI;";

             sql = "Insert into UserRegistration (Name,Surname,IDorPassport,Age,Address,FingerCode,GPSCoordination,region) values('" + Name + "','" + Surname + "','" + IDorPassport + "'," + Age + ",'" + Address + "','" + FingerCode + "','" + GPSCoordination + "','" + region + "')"; 
            connection = new SqlConnection(connetionString);
            // try
            // {
            string Message = "Successfull";

            try {
                connection.Open();
                command = new SqlCommand(sql, connection);
                command.ExecuteNonQuery();
                connection.Close();
            }catch(Exception e){
                throw;
                Message = "UnSuccessfull";
            }

            
            //while (dataReader.Read())
            //{
            // Message = subject + dataReader.GetValue(0) + ",";
            // MessageBox.Show(dataReader.GetValue(0) + " - " + dataReader.GetValue(1) + " - " + dataReader.GetValue(2));
            //}
            //dataReader.Close();
            //command.Dispose();
            connection.Close();
            //}
            //  catch (Exception ex)
            //  {
            //MessageBox.Show("Can not open connection ! ");
            // }


            return Message;
        }
        [WebMethod]
       public string InsertAssessment(string LiveWithParents, string Schooling, string CompletedSchool, string HighestGrade, string Children, int HowManyChildren, string MaritalStatus, int regID)
        {


            DateTime AttDate = DateTime.Now;
            SqlConnection connection;
            SqlCommand command;
            string sql = null;
            SqlDataReader dataReader;

            var connetionString = System.Configuration.ConfigurationManager.ConnectionStrings["Nacosa_TestConnectionString"].ConnectionString;
            // string connetionString = null;
            //connetionString = "Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password";
            // connetionString = "Data Source=ANGLOSURVEY;Initial Catalog=EdubuildCollege;Integrated Security=True"ES3SRV\ES3PPROD2012;
           // connetionString = "Data Source=ES3SRV;Initial Catalog=NACOSA;Integrated Security=True; ";
           // c
            sql = "Insert into Assessment(LiveWithParents,Schooling,CompletedSchool,HighestGrade,Children,HowManyChildren,MaritalStatus,regID) values('" + LiveWithParents + "','" + Schooling + "','" + CompletedSchool + "','" + HighestGrade + "','" + Children + "','" + HowManyChildren + "','" + MaritalStatus + "','" + regID + "')"; 
            connection = new SqlConnection(connetionString);
            // try
            // {
            string Message = "Successfull";

            try
            {
                connection.Open();
                command = new SqlCommand(sql, connection);
                command.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                Message = "UnSuccessfull";
            }


            //while (dataReader.Read())
            //{
            // Message = subject + dataReader.GetValue(0) + ",";
            // MessageBox.Show(dataReader.GetValue(0) + " - " + dataReader.GetValue(1) + " - " + dataReader.GetValue(2));
            //}
            //dataReader.Close();
            //command.Dispose();
            connection.Close();
            //}
            //  catch (Exception ex)
            //  {
            //MessageBox.Show("Can not open connection ! ");
            // }


            return Message;
        }
        [WebMethod]
        public string InsertJourney(string HIVTesting, string HIVSelfScreening, string CondomsSTIScreening, string PregnancyTesting, string EmergencyContraception, string VendingMachines, string PeerEducation, string ComprehensiveSexualityEducation, string IndividualAndGroupSupport, string PrepDemandCreation, string SRHKnowledge, string MentalHealthSupport, string SupportAccessSocialGrants, string DignityPacks, string AcademicSupport, string ReturnToSchoolSupport, string ECDVouchers, string EconomicStrengthening, string WholeSchoolDevelopment, string MenDialoguesGenderNorms, string YouthLeadership, int regID)
        {


            SqlConnection connection;
            SqlCommand command;
            string sql = null;
            SqlDataReader dataReader;

            var connetionString = System.Configuration.ConfigurationManager.ConnectionStrings["Nacosa_TestConnectionString"].ConnectionString;

            sql = "Insert into Journey(HIVTesting,HIVSelfScreening,CondomsSTIScreening,PregnancyTesting,EmergencyContraception,VendingMachines,PeerEducation,ComprehensiveSexualityEducation,IndividualAndGroupSupport,PrepDemandCreation,SRHKnowledge,MentalHealthSupport,SupportAccessSocialGrants,DignityPacks,AcademicSupport,ReturnToSchoolSupport,ECDVouchers,EconomicStrengthening,WholeSchoolDevelopment,MenDialoguesGenderNorms,YouthLeadership,regID) values('" + HIVTesting + "','" + HIVSelfScreening + "','" + CondomsSTIScreening + "','" + PregnancyTesting + "','" + EmergencyContraception + "','" + VendingMachines + "','" + PeerEducation + "','" + ComprehensiveSexualityEducation + "','" + IndividualAndGroupSupport + "','" + PrepDemandCreation + "','" + SRHKnowledge + "','" + MentalHealthSupport + "','" + SupportAccessSocialGrants + "','" + DignityPacks + "','" + ReturnToSchoolSupport + "','" + ECDVouchers + "','" + EconomicStrengthening + "','" + MenDialoguesGenderNorms + "','" + YouthLeadership + "','" + regID + "')"; 
            connection = new SqlConnection(connetionString);
            // try
            // {
            string Message = "Successfull";

            try
            {
                connection.Open();
                command = new SqlCommand(sql, connection);
                command.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                Message = "UnSuccessfull";
            }


            //while (dataReader.Read())
            //{
            // Message = subject + dataReader.GetValue(0) + ",";
            // MessageBox.Show(dataReader.GetValue(0) + " - " + dataReader.GetValue(1) + " - " + dataReader.GetValue(2));
            //}
            //dataReader.Close();
            //command.Dispose();
            connection.Close();
            //}
            //  catch (Exception ex)
            //  {
            //MessageBox.Show("Can not open connection ! ");
            // }


            return Message;
        }
    }

}
