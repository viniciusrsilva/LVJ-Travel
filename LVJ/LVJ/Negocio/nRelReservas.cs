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

        public void recuperarReservasCompleto(DataTable reserv)
        {
            try
            {
                string query = $"SELECT cliente_idcliente, nomeCliente, cidadeOrigem, cidadeDestino, dataViagem, horaPartida, emissao, reservaFirst, reservaBusiness, reservaEconomy FROM passagem AS p INNER JOIN cliente ON p.cliente_idcliente = cliente.idCliente INNER JOIN voo ON p.voo_idvoo = voo.idvoo INNER JOIN origens ON voo.origem = origens.idorigem INNER JOIN destinos ON voo.destino = destinos.iddestinos ORDER BY nomeCliente;";
                conexao.CarregaTabela(query, reserv);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }
    }
}