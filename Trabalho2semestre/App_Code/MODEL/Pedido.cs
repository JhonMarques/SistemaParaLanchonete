using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trabalho2semestre.App_Code.MODEL
{
    public class Pedido
    {
        public int qtd { get; set; }
        public int id { get; set; }
        public int id_produto { get; set; }
        public string cliente { get; set; }
        public int mesa { get; set; }
        public string status { get; set; }
        public float total { get; set; }
}
}
