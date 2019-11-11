using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Entidade
{
    public class eMostrarDados
    {
        public eAdicionarVoo idvoo { get; set; }
        public eAdicionarVoo origem { get; set; }
        public eAdicionarVoo destino { get; set; }
        public eAdicionarVoo dataViagem { get; set; }
        public eOrigens idorigem { get; set; }
        public eDestinos iddestino { get; set; }
        public eAdicionarVoo horaPartida { get; set; }
        public string disponivel { get; set; }

        public int idViagem { get; set; }

        public eMostrarDados()
        {
            idvoo = new eAdicionarVoo();
            origem = new eAdicionarVoo();
            destino = new eAdicionarVoo();
            dataViagem = new eAdicionarVoo();
            idorigem = new eOrigens();
            iddestino = new eDestinos();
            horaPartida = new eAdicionarVoo();
        }
    }
}