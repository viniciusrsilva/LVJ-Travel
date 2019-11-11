using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using LVJ.Util;
using LVJ.Entidade;

namespace LVJ
{
    public class nLogin : eLogin
    {
        public static bool ValidarLogin(string email, string senha)
        {
            bool retorno = false;

            string query = "SELECT COUNT(*) As QtdUsr FROM cliente WHERE emailCliente = '" + email + "' AND senhaCliente = md5(" + senha + ")";

            DataTable dt = new DataTable();
            string erro = conexao.CarregaTabela(query, dt);
            if (erro == "")
            {
                if (dt.Rows[0]["QtdUsr"].ToString() == "1")
                {
                    retorno = true;
                }
            }
            return retorno;
        }

        public void buscarID(string email)
        {
            DataTable id = new DataTable();
            string query = $"SELECT idCliente, nomeCliente, tipoPessoa FROM cliente WHERE emailCliente = '{email}'";
            conexao.CarregaTabela(query, id);

            idCliente = id.Rows[0]["idCliente"].ToString();
            nomeCliente = id.Rows[0]["nomeCliente"].ToString();
            tipoPessoa = id.Rows[0]["tipoPessoa"].ToString();
        }
    }
}