using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Entidade
{
    public class eVoo
    {
        public int idvoo { get; set; }

        public int aeronave_idaeronave { get; set; }

        public int origem { get; set; }

        public int destino { get; set; }

        public string horaPartida { get; set; }

        public int first { get; set; }

        public int business { get; set; }

        public int economy { get; set; }
    }
}