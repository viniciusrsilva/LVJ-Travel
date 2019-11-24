using LVJ.Entidade;
using LVJ.Util;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Negocio
{
    public class nVoo : eVoo
    {
        public void recuperarVoo(DataTable voos)
        {
            try
            {
                string query = $"SELECT idvoo, nomeAeronave, cidadeOrigem, cidadeDestino, dataViagem, horaPartida FROM voo INNER JOIN aeronave ON voo.aeronave_idaeronave = aeronave.idAeronave INNER JOIN origens ON voo.origem = origens.idorigem INNER JOIN destinos ON voo.destino = destinos.iddestinos ORDER BY cidadeOrigem;";
                conexao.CarregaTabela(query, voos);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void excluirVoo()
        {
            try
            {
                string query = $"DELETE FROM voo WHERE idvoo = {idvoo}";
                conexao.ModificarTabela(query);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }
    }
}