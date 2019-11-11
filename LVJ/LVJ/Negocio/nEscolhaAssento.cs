using LVJ.Util;
using LVJ.Entidade;
using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Negocio
{
    public class nEscolhaAssento : eEscolhaAssento
    {
        public void buscarVoo(string selOrigem, string selDestino, string selData, string selHora)
        {
            DataTable infoVoo = new DataTable();
            string query = $"SELECT idvoo, nomeAeronave, cidadeOrigem, cidadeDestino, dataViagem, horaPartida, first, business, economy  FROM voo INNER JOIN aeronave ON voo.aeronave_idaeronave = aeronave.idAeronave INNER JOIN origens ON voo.origem = origens.idorigem INNER JOIN destinos ON voo.destino = destinos.iddestinos WHERE origem = '{selOrigem}' AND destino = '{selDestino}' AND dataViagem = '{selData}' AND horaPartida = '{selHora}'";
            conexao.CarregaTabela(query, infoVoo);

            idvoo.idvoo = Convert.ToInt32(infoVoo.Rows[0]["idvoo"]);
        }

        public void reservar(string voo)
        {
            try
            {
                string query = $"INSERT INTO passagem (cliente_idcliente, voo_idvoo, emissao, reservaFirst, reservaBusiness, reservaEconomy) VALUES ('{idCliente.idCliente}','{voo}',(now()),'{resFirst}','{resBusiness}','{resEconomy}')";
                conexao.ModificarTabela(query);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void buscaReservado(int idVoo)
        {
            try
            {
                DataTable infoVoo = new DataTable();
                string query = $"SELECT SUM(reservaFirst), SUM(reservaBusiness), SUM(reservaEconomy) FROM passagem WHERE voo_idvoo = '{idVoo}'";
                conexao.CarregaTabela(query, infoVoo);

                reservadoFirst = Convert.ToInt32(infoVoo.Rows[0]["SUM(reservaFirst)"]);
                reservadoBusiness = Convert.ToInt32(infoVoo.Rows[0]["SUM(reservaBusiness)"]);
                reservadoEconomy = Convert.ToInt32(infoVoo.Rows[0]["SUM(reservaEconomy)"]);
            }
            catch
            {
                reservadoFirst = 0;
                reservadoBusiness = 0;
                reservadoEconomy = 0;
            }
            
        }

        public void saldoVoo(string selOrigem, string selDestino, string selData, string selHora, int reservadoFirst, int reservadoBusiness, int reservadoEconomy)
        {
            DataTable infoVoo = new DataTable();
            string query = $"SELECT idvoo, nomeAeronave, cidadeOrigem, cidadeDestino, dataViagem, horaPartida, (first-{reservadoFirst}) AS first, (business-{reservadoBusiness}) AS business, (economy-{reservadoEconomy}) AS economy FROM voo INNER JOIN aeronave ON voo.aeronave_idaeronave = aeronave.idAeronave INNER JOIN origens ON voo.origem = origens.idorigem INNER JOIN destinos ON voo.destino = destinos.iddestinos WHERE origem = '{selOrigem}' AND destino = '{selDestino}' AND dataViagem = '{selData}' AND horaPartida = '{selHora}'";
            conexao.CarregaTabela(query, infoVoo);

            idvoo.idvoo = Convert.ToInt32(infoVoo.Rows[0]["idvoo"]);
            origem = infoVoo.Rows[0]["cidadeOrigem"].ToString();
            destino = infoVoo.Rows[0]["cidadeDestino"].ToString();
            dia = infoVoo.Rows[0]["dataViagem"].ToString();
            hora = infoVoo.Rows[0]["horaPartida"].ToString();
            idvoo.first = Convert.ToInt32(infoVoo.Rows[0]["first"]);
            idvoo.business = Convert.ToInt32(infoVoo.Rows[0]["business"]);
            idvoo.economy = Convert.ToInt32(infoVoo.Rows[0]["economy"]);
        }
    }
}