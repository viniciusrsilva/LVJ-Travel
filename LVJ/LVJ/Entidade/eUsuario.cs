using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LVJ.Entidade
{
    public class eUsuario
    {
        public int idAdm { get; set; }
        public string nomeAdm { get; set; }
        public string cpfAdm { get; set; }
        public string emailAdm { get; set; }
        public string senhaAdm { get; set; }
    }
}