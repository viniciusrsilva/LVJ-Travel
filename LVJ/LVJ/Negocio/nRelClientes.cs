using LVJ.Entidade;
using LVJ.Util;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Negocio
{
    public class nRelClientes
    {
        public void recuperarClientes(DataTable reserv)
        {
            try
            {
                string query = $"SELECT tipoPessoa, count(tipoPessoa) AS 'total' FROM cliente group by tipoPessoa;";
                conexao.CarregaTabela(query, reserv);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }
    }
}