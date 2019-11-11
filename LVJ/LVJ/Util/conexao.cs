using System;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace LVJ.Util
{
    public static class conexao
    {
        private static readonly string stringConexao = "SERVER=localhost;DATABASE=lvj;UID=root;PASSWORD=1234;SSLMode=none;";

        private static readonly MySqlConnection connection = new MySqlConnection(stringConexao);

        private static string AbrirConexao()
        {
            string retorno = "";
            try
            {
                connection.Open();
            }
            catch (Exception exp)
            {
                retorno = exp.Message;
            }
            return retorno;
        }

        private static string FecharConexao()
        {
            string retorno = "";
            try
            {
                connection.Close();
            }
            catch (Exception exp)
            {
                retorno = exp.Message;
            }
            return retorno;
        }

        public static string ModificarTabela(string query)
        {
            string retorno = "";
            try
            {
                AbrirConexao();
                MySqlCommand comando = new MySqlCommand(query, connection);
                comando.ExecuteNonQuery();
                FecharConexao();
            }
            catch (Exception exp)
            {
                retorno = exp.Message;
            }
            return retorno;
        }

        public static string CarregaTabela(string query, DataTable dados)
        {
            string retorno = "";
            try
            {
                AbrirConexao();
                MySqlCommand comando = new MySqlCommand(query, connection);
                MySqlDataReader dataReader = comando.ExecuteReader();
                dados.Load(dataReader);
                FecharConexao();
            }
            catch (Exception exp)
            {
                retorno = exp.Message;
            }
            return retorno;
        }
        
    }
}