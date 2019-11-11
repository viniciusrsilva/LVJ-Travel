using LVJ.Negocio;
using LVJ.Util;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Entidade
{
    public class eEscolhaAssento
    {
        public eVoo idvoo { get; set; }
        public eVoo aeronave_idaeronave { get; set; }

        public eVoo first { get; set; }
        public eVoo business { get; set; }
        public eVoo economy { get; set; }

        public eLogin idCliente { get; set; }

        public int resFirst { get; set; }
        public int resBusiness { get; set; }
        public int resEconomy { get; set; }

        public string origem { get; set; }
        public string destino { get; set; }
        public string dia { get; set; }
        public string hora { get; set; }

        public int reservadoFirst { get; set; }
        public int reservadoBusiness { get; set; }
        public int reservadoEconomy { get; set; }

        public eEscolhaAssento()
        {
            idvoo = new eVoo();
            aeronave_idaeronave = new eVoo();
            idCliente = new eLogin();
            first = new eVoo();
            business = new eVoo();
            economy = new eVoo();
        }
    }
}