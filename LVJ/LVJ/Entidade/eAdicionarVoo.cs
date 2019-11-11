using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Entidade
{
    public class eAdicionarVoo
    {
        public int idvoo { get; set; }
        public eAeronave aeronave { get; set; }
        public eOrigens origem { get; set; }
        public eDestinos destino { get; set; }
        public string dataViagem { get; set; }
        public string horaPartida { get; set; }
        public int first { get; set; }
        public int business { get; set; }
        public int economy { get; set; }

        public eAdicionarVoo()
        {
            aeronave = new eAeronave();
            origem = new eOrigens();
            destino = new eDestinos();
        }
    }
}