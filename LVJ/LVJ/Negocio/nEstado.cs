using LVJ.Entidade;
using LVJ.Util;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Negocio
{
    public class nEstado
    {
        public void recuperarEstado(DataTable aeronave)
        {
            try
            {
                string query = $"SELECT idestado, nomeEstado, UF FROM estado";
                conexao.CarregaTabela(query, aeronave);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }
    }
}