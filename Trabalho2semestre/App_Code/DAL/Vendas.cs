using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trabalho2semestre.App_Code.DAL
{
    public class Vendas
    {
        private string strCon = Conexao.getConexao();

        public List<MODEL.Vendas> SelectById()
        {
            List<MODEL.Vendas> lstVendas = new List<MODEL.Vendas>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Vendas";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    MODEL.Vendas Iten_Vendas = new MODEL.Vendas();
                    
                    Iten_Vendas.idPedido = Convert.ToInt32(reader[0].ToString());
                    Iten_Vendas.valor = Convert.ToSingle(reader["valor"].ToString());
                    Iten_Vendas.id = Convert.ToInt32(reader["id"].ToString());
                    Iten_Vendas.status = Convert.ToString(reader["status"].ToString());

                    lstVendas.Add(Iten_Vendas);
                }
            }
            catch
            {
                Console.WriteLine(" erro na Seleção de vendas...");
            }
            finally
            {
                conexao.Close();
            }

            return lstVendas;
        }



        public List<MODEL.Vendas> SelectById(int id)
        {
            List<MODEL.Vendas> lstVendas = new List<MODEL.Vendas>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Vendas where id=@id";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", id);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    MODEL.Vendas item_venda = new MODEL.Vendas();
                    item_venda.idPedido = Convert.ToInt32(reader[0].ToString());
                    item_venda.valor = Convert.ToSingle(reader["valor"].ToString());
                    item_venda.id = Convert.ToInt32(reader["id"].ToString());
                    item_venda.status = (reader["status"].ToString()); 

                    lstVendas.Add(item_venda);
                }
            }
            catch
            {
                Console.WriteLine("Deu erro na Seleção de Itens_Locacao...");
            }
            finally
            {
                conexao.Close();
            }

            return lstVendas;
        }

        public void Insert(MODEL.Vendas Item_Venda)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Insert into Vendas values (@idPedido, @valor,@id, @status);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@idPedido", Item_Venda.idPedido);
            cmd.Parameters.AddWithValue("@valor", Item_Venda.valor);
            cmd.Parameters.AddWithValue("@id", Item_Venda.id);
            cmd.Parameters.AddWithValue("@status", Item_Venda.status);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Deu erro na inserção de Itens_Vendas...");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Update(MODEL.Vendas item_Venda)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Vendas set idPedido=@idPedido, ";
            sql += " valor=@valor, status=@status where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@idPedido", item_Venda.idPedido);
            cmd.Parameters.AddWithValue("@valor", item_Venda.valor);
            cmd.Parameters.AddWithValue("@id", item_Venda.id);
            cmd.Parameters.AddWithValue("@status", item_Venda.status);

            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Erro na atualização de Vendas");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Delete(MODEL.Vendas item_Venda)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Delete from Vendas where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", item_Venda.id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Erro na Remoção de Itens_Locacao");
            }
            finally
            {
                conexao.Close();
            }

        }
    }
}
