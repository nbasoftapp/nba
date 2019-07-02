using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AMEXCHANGE
{
    public class Query
    {
        private SqlConnection myConnection = null;
        private SqlCommand command = null;
        public Query()
        {
            myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["surveyConnectionString"].ConnectionString);
        }
        public bool OpenConnection()
        {
            try
            {

                myConnection.Open();
                return true;
            }
            catch (Exception e)
            {

                return false;
            }
        }
        public bool CloseConnection()
        {
            try
            {
                myConnection.Close();
                return true;
            }
            catch (Exception ex)
            {

                return false;
            }
        }

       
    }
   
}