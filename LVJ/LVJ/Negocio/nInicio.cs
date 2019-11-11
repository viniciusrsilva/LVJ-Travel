using LVJ.Util;
using LVJ.Entidade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Negocio
{
    public class nInicio : eInicio
    {
        public void cadastrarNovo()
        {
            try
            {
                string query = $"INSERT INTO marketing (emailMarketing) VALUES ('{emailMarketing}')";
                conexao.ModificarTabela(query);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }
    }
}