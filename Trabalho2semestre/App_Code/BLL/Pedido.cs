using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trabalho2semestre.App_Code.BLL
{
    public class Pedido
    {
        public List<MODEL.Pedido> Select()
        {
            DAL.Pedido dalPedido = new DAL.Pedido();
            return dalPedido.Select();
        }

        public MODEL.Pedido SelectById(int id)
        {
            DAL.Pedido dalPedido = new DAL.Pedido();
            return dalPedido.SelectById(id);
        }

        public void Insert(MODEL.Pedido pedido)
        {
            DAL.Pedido dalPedido = new DAL.Pedido();
            //
            dalPedido.Insert(pedido);
        }

        public void Update(MODEL.Pedido pedido)
        {
            DAL.Pedido dalPedido = new DAL.Pedido();
            dalPedido.Update(pedido);
        }

        public void Delete(MODEL.Pedido pedido)
        {
            DAL.Pedido dalPedido = new DAL.Pedido();

            dalPedido.Delete(pedido);
        }
    }
}
