using LVJ.Entidade;
using LVJ.Util;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Negocio
{
    public class nUsuario : eUsuario
    {
        public void recuperarUsuario(DataTable usuario)
        {
            try
            {
                string query = $"SELECT a.idAdm,a.nomeAdm,a.cpfAdm,a.emailAdm FROM administrador AS a";
                conexao.CarregaTabela(query, usuario);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void cadastarNovo()
        {
            try
            {
                string query = $"INSERT INTO administrador (nomeAdm,cpfAdm,emailAdm,SenhaAdm) values ('{nomeAdm}','{cpfAdm}','{emailAdm}',md5('{senhaAdm}'));";
                conexao.ModificarTabela(query);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void excluirUsuario()
        {
            try
            {
                string query = $"DELETE FROM administrador WHERE idAdm = {idAdm}";
                conexao.ModificarTabela(query);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public static bool ValidarLogin(string cpf, string senha)
        {
            bool retorno = false;

            string query = "SELECT COUNT(*) As QtdUsr FROM administrador WHERE cpfAdm = '" + cpf + "' AND senhaAdm = md5("+ senha +")";

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

        public void buscarID(string cpf)
        {
            DataTable id = new DataTable();
            string query = $"SELECT idAdm FROM administrador WHERE cpfAdm = '{cpf}'";
            conexao.CarregaTabela(query, id);

            idAdm = Convert.ToInt32(id.Rows[0]["idAdm"]);
        }
    }
}