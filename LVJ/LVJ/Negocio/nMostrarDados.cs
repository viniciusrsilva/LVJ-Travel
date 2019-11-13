using LVJ.Entidade;
using LVJ.Util;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Negocio
{
    public class nMostrarDados : eMostrarDados
    {
        public void recuperarOrigem(DataTable dados)
        {
            try
            {
                string query = $"SELECT idorigem, cidadeOrigem FROM voo INNER JOIN origens ON voo.origem = origens.idorigem WHERE DATE_FORMAT(STR_TO_DATE(dataViagem, '%d/%m/%Y'), '%Y-%m-%d') >= CURDATE() GROUP BY cidadeOrigem ORDER BY cidadeOrigem";
                conexao.CarregaTabela(query, dados);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void recuperarDestino(string selOrigem, DataTable dados)
        {
            try
            {
                string query = $"SELECT iddestinos, cidadeDestino FROM voo INNER JOIN destinos ON voo.destino = destinos.iddestinos AND voo.origem = " + selOrigem + " WHERE DATE_FORMAT(STR_TO_DATE(dataViagem, '%d/%m/%Y'), '%Y-%m-%d') >= CURDATE() GROUP BY cidadeDestino ORDER BY cidadeDestino";
                conexao.CarregaTabela(query, dados);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void recuperarData(string selOrigem, string selDestino, DataTable dados)
        {
            try
            {
                string query = $"SELECT cidadeDestino, dataViagem FROM voo INNER JOIN destinos ON voo.destino = destinos.iddestinos AND voo.origem = " + selOrigem + " AND voo.destino = " + selDestino + " WHERE DATE_FORMAT(STR_TO_DATE(dataViagem, '%d/%m/%Y'), '%Y-%m-%d') >= CURDATE() GROUP BY dataViagem ORDER BY dataViagem";
                conexao.CarregaTabela(query, dados);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void recuperarHora(string selOrigem, string selDestino, DataTable dados)
        {
            try
            {
                string query = $"SELECT cidadeDestino, dataViagem, horaPartida FROM voo INNER JOIN destinos ON voo.destino = destinos.iddestinos AND voo.origem = " + selOrigem + " AND voo.destino = " + selDestino + " WHERE DATE_FORMAT(STR_TO_DATE(dataViagem, '%d/%m/%Y'), '%Y-%m-%d') >= CURDATE() GROUP BY horaPartida ORDER BY horaPartida";
                conexao.CarregaTabela(query, dados);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void recuperarReservas(DataTable reservas, int cliente)
        {
            try
            {
                string query = $"SELECT idviagem, cidadeOrigem, cidadeDestino, dataViagem, horaPartida, reservaFirst, reservaBusiness, reservaEconomy FROM passagem INNER JOIN voo ON voo.idvoo = passagem.voo_idvoo INNER JOIN origens ON origens.idorigem = voo.origem INNER JOIN destinos ON destinos.iddestinos = voo.destino INNER JOIN cliente ON passagem.cliente_idcliente = cliente.idCliente WHERE idCliente = '{cliente}';";
                conexao.CarregaTabela(query, reservas);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void excluirReserva()
        {
            try
            {
                string query = $"DELETE FROM passagem WHERE idviagem = {idViagem}";
                conexao.ModificarTabela(query);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }
    }
}