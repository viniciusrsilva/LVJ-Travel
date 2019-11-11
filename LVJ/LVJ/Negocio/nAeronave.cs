using LVJ.Entidade;
using LVJ.Util;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Negocio
{
    public class nAeronave : eAeronave
    {
        public void cadastarNovo()
        {
            try
            {
                string query = $"INSERT INTO aeronave (nomeAeronave,firstAeronave,businessAeronave,economyAeronave) VALUES ('{nomeAeronave}','{firstAeronave}','{businessAeronave}','{economyAeronave}')";
                conexao.ModificarTabela(query);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void recuperarAeronave(DataTable aeronave)
        {
            try
            {
                string query = $"SELECT aer.idaeronave,aer.nomeAeronave,aer.firstAeronave,aer.businessAeronave,aer.economyAeronave FROM aeronave AS aer";
                conexao.CarregaTabela(query, aeronave);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void excluirAeronave()
        {
            try
            {
                string query = $"DELETE FROM aeronave WHERE idaeronave = {idaeronave}";
                conexao.ModificarTabela(query);
            }
            catch (Exception exp)
            {                
                throw exp;
            }
        }
    }
}