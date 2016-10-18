using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trabalho2semestre.App_Code.BLL
{
    public class Vendas
    {
        public List<MODEL.Vendas> Select()
        {
            DAL.Vendas dalVenda = new DAL.Vendas();

            return dalVenda.SelectById();
        }

        public List<MODEL.Vendas> SelectByLocacao(int id)
        {
            DAL.Vendas dalVenda = new DAL.Vendas();

            return dalVenda.SelectById(id);
        }

       
        public void Update(MODEL.Produto produto)
        {
            DAL.Produto dalprod = new DAL.Produto();
            dalprod.Update(produto);
        }

        public void Delete(MODEL.Produto itemProd)
        {
            DAL.Produto dalProd = new DAL.Produto();

            dalProd.Delete(itemProd);
        }
    }
}
