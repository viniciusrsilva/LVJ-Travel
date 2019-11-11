using LVJ.Entidade;
using LVJ.Util;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Negocio
{
    public class nDestinos : eDestinos
    {
        public void cadastrarNovo()
        {
            try
            {
                string query = $"INSERT INTO destinos (cidadeDestino) VALUES ('{cidadeDestino}')";
                conexao.ModificarTabela(query);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void recuperarDestino(DataTable destinos)
        {
            try
            {
                string query = $"SELECT destinos.iddestinos, destinos.cidadeDestino FROM destinos order by destinos.cidadeDestino";
                conexao.CarregaTabela(query, destinos);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }
    }
}