using Devart.Data.Oracle;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Oracle_Project.Models
{
    public class MyOracle
    {
        public List<object[]> ExecuteTableValuedFunction(string nameFunction,string Parameter)
        {
            using (OracleConnection connection = new OracleConnection("User Id = admin; Password = admin; Server = localhost; Direct = True; Sid = ORA; Persist Security Info = True"))
            {
                connection.Open();
                OracleCommand command = connection.CreateCommand(nameFunction, CommandType.StoredProcedure);
                command.IsTableValuedFunction = true;
                command.Parameters.Add("p_rows", Parameter);
                List<object[]> resultSet = new List<object[]>();
                OracleDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        resultSet.Add(reader.GetValues());
                        //Console.WriteLine(reader.GetValue(0));
                    }
                }
                finally
                {
                    reader.Close();
                }
                return resultSet;
            }
        }
        public List<object[]> ExecuteTableValuedFunctionNoParameter(string nameFunction)
        {
            using (OracleConnection connection = new OracleConnection("User Id = admin; Password = admin; Server = localhost; Direct = True; Sid = ORA; Persist Security Info = True"))
            {
                connection.Open();
                OracleCommand command = connection.CreateCommand(nameFunction, CommandType.StoredProcedure);
                command.IsTableValuedFunction = true;
                List<object[]> resultSet = new List<object[]>();
                OracleDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        resultSet.Add(reader.GetValues());
                        //Console.WriteLine(reader.GetValue(0));
                    }
                }
                finally
                {
                    reader.Close();
                }
                return resultSet;
            }
        }
        public DataSet ExecuteTableValuedProcedure(string nameFunction, string Parameter)
        {
            using (OracleConnection connection = new OracleConnection("User Id = admin; Password = admin; Server = localhost; Direct = True; Sid = ORA; Persist Security Info = True"))
            {
                DataSet dataset = new DataSet();
                connection.Open();
                OracleCommand command = connection.CreateCommand(nameFunction, CommandType.StoredProcedure);
                command.Parameters.Add(Parameter, OracleDbType.Cursor, ParameterDirection.InputOutput);
                try
                {
                    command.ExecuteNonQuery();
                    OracleDataAdapter da = new OracleDataAdapter(command);
                    da.Fill(dataset);
                }
                catch (Exception ex)
                {
                    System.Console.WriteLine("Exception: {0}", ex.ToString());
                }
                connection.Close();
                return dataset;
            }
        }
        //public static List<object[]> ExecuteTableValuedFunction(string queryString, string para)
        //{
        //    using (OracleConnection conn = new OracleConnection("User Id = admin; Password = admin; Server = localhost; Direct = True; Sid = ORA; Persist Security Info = True; DescribeStoredProcedure=false;"))
        //    {
        //        conn.Open();
        //        using (OracleCommand cmd = conn.CreateCommand(queryString, CommandType.StoredProcedure))
        //        {
        //            cmd.IsTableValuedFunction = true;
        //            cmd.Parameters.Add("p_rows", para);

        //            List<object[]> resultSet = new List<object[]>();
        //            using (OracleDataReader reader = cmd.ExecuteReader())
        //            {
        //                while (reader.Read())
        //                    resultSet.Add(reader.GetValues());
        //                return resultSet;
        //            }
        //        }
        //    }
        //}
    }
}