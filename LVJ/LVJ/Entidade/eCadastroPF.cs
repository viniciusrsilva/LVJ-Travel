using LVJ.Negocio;
using LVJ.Util;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace LVJ.Entidade
{
    public class eCadastroPF
    {
        public int idCliente { get; set; }
        public string nomeCliente { get; set; }
        public string cepCliente { get; set; }
        public string logradouroCliente { get; set; }
        public string numeroCliente { get; set; }
        public string bairroCliente { get; set; }
        public string municipioCliente { get; set; }
        public eEstado estado { get; set; }
        public string emailCliente { get; set; }
        public string senhaCliente { get; set; }
        public string telefoneCliente { get; set; }
        public string celularCliente { get; set; }

        public int cliente_idCliente { get; set; }
        public string nomePF { get; set; }
        public string sobrenomePF { get; set; }
        public bool masculino { get; set; }
        public bool feminino { get; set; }
        public string cpfPF { get; set; }
        public string rgPF { get; set; }
        public string dataNascimentoPF { get; set; }
        public virtual string DataFormatString { get; set; }

        public eCadastroPF()
        {
            estado = new eEstado();
        }
    }
}