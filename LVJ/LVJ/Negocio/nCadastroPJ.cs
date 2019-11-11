using LVJ.Util;
using LVJ.Entidade;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Negocio
{
    public class nCadastroPJ : eCadastroPJ
    {
        public void cadastrarNovo()
        {
            try
            {
                string query = $"INSERT INTO cliente (tipoPessoa,nomecliente,cepCliente,logradouroCliente,numeroCliente,bairroCliente,estado_idestado,municipioCliente,emailCliente,senhaCliente,telefoneCliente,celularCliente) VALUES ('PJ','{razaoSocialPJ}','{cepCliente}','{logradouroCliente}','{numeroCliente}','{bairroCliente}','{estado.idestado}','{municipioCliente}','{emailCliente}',md5('{senhaCliente}'),'{telefoneCliente}','{celularCliente}')";
                conexao.ModificarTabela(query);
            } catch (Exception exp)
            {
                throw exp;
            }

            try
            {
                string query = $"INSERT INTO pessoajuridica (cliente_idCliente,razaoSocialPJ,cnpjPJ) VALUES ((select max(idCliente) from cliente),'{razaoSocialPJ}','{cnpjPJ}')";
                conexao.ModificarTabela(query);
            } catch (Exception exp)
            {
                throw exp;
            }
        }

        public void buscarPJ(int idCliente)
        {
            try
            {
                DataTable pj = new DataTable();
                string query = $"SELECT * FROM cliente INNER JOIN pessoajuridica ON cliente.idCliente = cliente_idCliente WHERE idCliente = {idCliente}";
                conexao.CarregaTabela(query, pj);

                razaoSocialPJ = pj.Rows[0]["razaoSocialPJ"].ToString();
                cnpjPJ = pj.Rows[0]["cnpjPJ"].ToString();
                cepCliente = pj.Rows[0]["cepCliente"].ToString();
                logradouroCliente = pj.Rows[0]["logradouroCliente"].ToString();
                numeroCliente = pj.Rows[0]["numeroCliente"].ToString();
                bairroCliente = pj.Rows[0]["bairroCliente"].ToString();
                estado.idestado = Convert.ToInt32(pj.Rows[0]["estado_idestado"].ToString());
                municipioCliente = pj.Rows[0]["municipioCliente"].ToString();
                telefoneCliente = pj.Rows[0]["telefoneCliente"].ToString();
                celularCliente = pj.Rows[0]["celularCliente"].ToString();
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        internal void editarPJ(int idCliente)
        {
            try
            {
                string query = $"UPDATE cliente SET cepCliente = '{cepCliente}', logradouroCliente = '{logradouroCliente}', numeroCliente = '{numeroCliente}', bairroCliente = '{bairroCliente}', estado_idestado = '{estado.idestado}', municipioCliente = '{municipioCliente}', telefoneCliente = '{telefoneCliente}', celularCliente = '{celularCliente}'";

                query = query + $" WHERE idCliente = {idCliente}";
                conexao.ModificarTabela(query);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }
    }
}