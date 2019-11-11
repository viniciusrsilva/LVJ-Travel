using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Entidade
{
    public class eCadastroPJ
    {
        public int idCliente { get; set; }
        public string cepCliente { get; set; }
        public string logradouroCliente { get; set; }
        public string numeroCliente { get; set; }
        public string bairroCliente { get; set; }
        public eEstado estado { get; set; }
        public string municipioCliente { get; set; }
        public string emailCliente { get; set; }
        public string senhaCliente { get; set; }
        public string telefoneCliente { get; set; }
        public string celularCliente { get; set; }

        public int cliente_iCcliente { get; set; }
        public string razaoSocialPJ { get; set; }
        public string cnpjPJ { get; set; }

        public eCadastroPJ()
        {
            estado = new eEstado();
        }
    }
}