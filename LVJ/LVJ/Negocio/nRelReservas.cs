using LVJ.Entidade;
using LVJ.Util;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Negocio
{
    public class nRelReservas
    {
        public void recuperarReservas(DataTable reserv)
        {
            try
            {
                string query = $"SELECT cliente_idcliente, nomeCliente, count(cliente_idcliente) AS 'total_reservas' FROM passagem INNER JOIN cliente ON cliente_idcliente = idCliente group by cliente_idcliente order by total_reservas desc;";
                conexao.CarregaTabela(query, reserv);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }
    }
}