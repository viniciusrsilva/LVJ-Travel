using LVJ.Entidade;
using LVJ.Util;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Negocio
{
    public class nAdicionarVoo : eAdicionarVoo
    {
        public void cadastrarNovo()
        {
            try
            {
                string query = $"INSERT INTO voo (aeronave_idaeronave,origem,destino,dataViagem,horaPartida,disponivel,first,business,economy) VALUES ('{aeronave.idaeronave}','{origem.idorigem}','{destino.iddestinos}','{dataViagem}','{horaPartida}','S',(SELECT firstAeronave FROM aeronave WHERE idAeronave = {aeronave.idaeronave}),(SELECT businessAeronave FROM aeronave WHERE idAeronave = {aeronave.idaeronave}),(SELECT economyAeronave FROM aeronave WHERE idAeronave = {aeronave.idaeronave}))";
                conexao.ModificarTabela(query);
            } catch (Exception exp)
            {
                throw exp;
            }
        }
    }
}