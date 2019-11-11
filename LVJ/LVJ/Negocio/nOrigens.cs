using LVJ.Entidade;
using LVJ.Util;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Negocio
{
    public class nOrigens : eOrigens
    {
        public void cadastrarNovo()
        {
            try
            {
                string query = $"INSERT INTO origens (cidadeOrigem) VALUES ('{cidadeOrigem}')";
                conexao.ModificarTabela(query);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void recuperarOrigem(DataTable origens)
        {
            try
            {
                string query = $"SELECT origens.idorigem, origens.cidadeOrigem FROM origens order by origens.cidadeOrigem";
                conexao.CarregaTabela(query, origens);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }
    }
}