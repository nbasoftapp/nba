using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Configuration;

namespace AMEXCHANGE
{
    public static class GlobalMethods
    {
        #region SQL
        //SQL Database Connection
        public static string constring = ConfigurationManager.ConnectionStrings["surveyConnectionString"].ConnectionString;
        public static SqlConnection sqlcon = new SqlConnection(constring);
        public static bool conOpen = false;
        public static bool correctUser, correctPassword;
        public static string status, userRole, fName;
        public static int roleId;
        //public GlobalMethods()
        //{

        //}
        public static void openConnection()
        {
            sqlcon.Open();
           
        }
        public static void closeConnection()
        {
            sqlcon.Close();
        }

        #endregion

        #region Login
        public static bool checkUserStatus(string name)
        {
            //Checking the user's status if active or not
            GlobalMethods.openConnection();
            string Qry = "SELECT [Active] FROM Users WHERE [uname] = '" + name + "'";
            SqlCommand sqlCmd = new SqlCommand(Qry, GlobalMethods.sqlcon);
            SqlDataReader sqlReader;

            sqlReader = sqlCmd.ExecuteReader();

            if (sqlReader.Read())
            {
                status = sqlReader[0].ToString();
            }
            if (status == "A")
            {
                correctUser = true;
            }
            else
                correctUser = false;

            GlobalMethods.closeConnection();

            return correctUser;
        }



        public static bool checkUserName(string userName)
        {
            //Getting the username and checking if the username exists in the database
            int count = 0;
            GlobalMethods.openConnection();
            string Qry = "SELECT COUNT(uname) FROM Users WHERE uname = '" + userName + "'";
            SqlCommand sqlCmd = new SqlCommand(Qry, GlobalMethods.sqlcon);
            SqlDataReader sqlReader;

            sqlReader = sqlCmd.ExecuteReader();

            if (sqlReader.Read())
            {
                count = Convert.ToInt32(sqlReader[0]);
            }
            GlobalMethods.closeConnection();

            //Checking if username exists
            if (count > 0)
                correctUser = true;
            else
                correctUser = false;

            return correctUser;
        }

        public static bool checkPassword(string usern, string pwd)
        {
            string dbPassword = "";
            GlobalMethods.openConnection();
            string Qry = "SELECT password FROM Users WHERE uname = '" + usern + "'";
            SqlCommand sqlCmd = new SqlCommand(Qry, GlobalMethods.sqlcon);
            SqlDataReader sqlReader;
            sqlReader = sqlCmd.ExecuteReader();

            if (sqlReader.Read())
            {
                if (!sqlReader.IsDBNull(0))
                {
                    dbPassword = sqlReader[0].ToString();
                }
                else
                    dbPassword = "";
            }
            GlobalMethods.closeConnection();

            if (dbPassword == pwd)
                correctPassword = true;
            else
                correctPassword = false;
            return correctPassword;
        }
        #endregion

        public static int validateEmail(string email)
        {
            int vReturned = 0;
            string pattern = "^[a-zA-Z][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$";

            if (Regex.IsMatch(email, pattern))
            {
                vReturned = 1;//valid email address entered
            }
            else
            {
                vReturned = 0;//invalid email address entered
            }
            return vReturned;

        }

        public static int getCount(string query)
        {

            int count = 0;
            SqlCommand cmd = new SqlCommand(query.ToString(), sqlcon);
            SqlDataReader sqlReader;
            openConnection();
            sqlReader = cmd.ExecuteReader();
            if (sqlReader.Read())
            {
                count = Convert.ToInt32(sqlReader[0].ToString());
            }
            closeConnection();
            return count;
        }

        public static string getStatus(string query)
        {

            string status = "";
            SqlCommand cmd = new SqlCommand(query.ToString(), sqlcon);
            SqlDataReader sqlReader;
            openConnection();
            sqlReader = cmd.ExecuteReader();
            if (sqlReader.Read())
            {
                status = sqlReader[0].ToString();
            }
            closeConnection();
            return status;
        }

    }
}