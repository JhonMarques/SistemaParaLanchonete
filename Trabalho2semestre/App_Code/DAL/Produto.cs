using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trabalho2semestre.App_Code.DAL
{
    public class Produto
    {
        private string strCon = Conexao.getConexao();

        public List<MODEL.Produto> Select()
        {
            List<MODEL.Produto> lstProd = new List<MODEL.Produto>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Produto";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    MODEL.Produto Prod = new MODEL.Produto();
                    Prod.produto = (reader[0].ToString());
                    Prod.id = Convert.ToInt32(reader["id"].ToString());
                    Prod.valor = Convert.ToSingle(reader["valor"].ToString());
                    Prod.qtd = Convert.ToInt32(reader["qtd"].ToString());
                   
                    lstProd.Add(Prod);
                }
            }
            catch
            {
                Console.WriteLine("Deu erro na Seleção de Produtos...");
            }
            finally
            {
                conexao.Close();
            }

            return lstProd;
        }

        public void Insert(MODEL.Produto prod)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Insert into Produto values (@produto, @id, @valor, @qtd);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@produto", prod.produto);
            cmd.Parameters.AddWithValue("@id", prod.id);
            cmd.Parameters.AddWithValue("@valor", prod.valor);
            cmd.Parameters.AddWithValue("@qtd", prod.qtd);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Deu erro na inserção de Produtos...");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Update(MODEL.Produto prod)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Produto set valor=@valor, ";
            sql += "qtd=@qtd, produto=@produto where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", prod.id);
            cmd.Parameters.AddWithValue("@valor", prod.valor);
            cmd.Parameters.AddWithValue("@qtd", prod.qtd);
            cmd.Parameters.AddWithValue("@produto", prod.produto);
            
           


            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Erro na atualização de Produto");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Delete(MODEL.Produto prod)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Delete from Produto where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", prod.id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Erro na Remoção de Produtos");
            }
            finally
            {
                conexao.Close();
            }

        }

    }
}
