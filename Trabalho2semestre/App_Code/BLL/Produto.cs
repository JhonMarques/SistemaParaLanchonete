using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trabalho2semestre.App_Code.BLL
{
    public class Produto
    {
        public List<MODEL.Produto> SelectById()
        {
            DAL.Produto Produto = new DAL.Produto();

            return Produto.Select();
        }

        public void Insert(MODEL.Produto prod)
        {
            DAL.Produto Produto = new DAL.Produto();
            //
            Produto.Insert(prod);
        }

        public void Update(MODEL.Produto prod)
        {
            DAL.Produto Produto = new DAL.Produto();
            Produto.Update(prod);
        }

        public void Delete(MODEL.Produto prod)
        {
            DAL.Produto Produto = new DAL.Produto();

            Produto.Delete(prod);
        }
    }
}
