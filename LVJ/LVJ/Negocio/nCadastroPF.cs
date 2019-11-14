using LVJ.Entidade;
using LVJ.Util;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Negocio
{
    public class nCadastroPF : eCadastroPF
    {
        public void cadastarNovo()
        {
            try
            {
                string query = $"INSERT INTO cliente (tipoPessoa,nomeCliente,cepCliente,logradouroCliente,numeroCliente,bairroCliente,estado_idestado,municipioCliente,emailCliente,senhaCliente,telefoneCliente,celularCliente) VALUES ('PF','{nomePF} {sobrenomePF}','{cepCliente}','{logradouroCliente}','{numeroCliente}','{bairroCliente}','{estado.idestado}','{municipioCliente}','{emailCliente}',md5('{senhaCliente}'),'{telefoneCliente}','{celularCliente}')";
                conexao.ModificarTabela(query);
            }
            catch (Exception exp)
            {
                throw exp;
            }

            try
            {
                string query = $"INSERT INTO pessoafisica (cliente_idCliente,nomePF,sobrenomePF,masculino,feminino,cpfPF,rgPF,dataNascimentoPF) VALUES ((select max(idCliente) from cliente),'{nomePF}','{sobrenomePF}','{masculino}','{feminino}','{cpfPF}','{rgPF}',DATE_FORMAT(STR_TO_DATE('{dataNascimentoPF}', '%Y-%m-%d'), '%d/%m/%Y'))";
                conexao.ModificarTabela(query);
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void buscarPF(int idCliente)
        {
            DataTable pf = new DataTable();
            string query = $"SELECT * FROM cliente INNER JOIN pessoafisica ON cliente.idCliente = cliente_idCliente WHERE idCliente = {idCliente}";
            conexao.CarregaTabela(query, pf);

            nomePF = pf.Rows[0]["nomePF"].ToString();
            sobrenomePF = pf.Rows[0]["sobrenomePF"].ToString();
            cpfPF = pf.Rows[0]["cpfPF"].ToString();
            rgPF = pf.Rows[0]["rgPF"].ToString();
            dataNascimentoPF = pf.Rows[0]["dataNascimentoPF"].ToString();
            cepCliente = pf.Rows[0]["cepCliente"].ToString();
            logradouroCliente = pf.Rows[0]["logradouroCliente"].ToString();
            numeroCliente = pf.Rows[0]["numeroCliente"].ToString();
            bairroCliente = pf.Rows[0]["bairroCliente"].ToString();
            estado.idestado = Convert.ToInt32(pf.Rows[0]["estado_idestado"].ToString());
            municipioCliente = pf.Rows[0]["municipioCliente"].ToString();
            telefoneCliente = pf.Rows[0]["telefoneCliente"].ToString();
            celularCliente = pf.Rows[0]["celularCliente"].ToString();
        }

        internal void editarPF(int idCliente)
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