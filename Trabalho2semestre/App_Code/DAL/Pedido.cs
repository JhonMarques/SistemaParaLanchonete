using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trabalho2semestre.App_Code.DAL
{
    public class Pedido
    {
        private string strCon = Conexao.getConexao();

        public List<MODEL.Pedido> Select()
        {
            List<MODEL.Pedido> lstPedido = new List<MODEL.Pedido>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Pedido";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    MODEL.Pedido pedido = new MODEL.Pedido();
                    
                    pedido.id = Convert.ToInt32(reader[0].ToString());
                    pedido.id_produto = Convert.ToInt32(reader["id_produto"].ToString());
                    pedido.cliente = reader["cliente"].ToString();
                    pedido.mesa = Convert.ToInt32(reader["mesa"].ToString());
                    pedido.status = reader["status"].ToString();
                    pedido.total = Convert.ToSingle(reader["total"].ToString());
                    pedido.qtd = Convert.ToInt32(reader[0].ToString());
                    lstPedido.Add(pedido);
                }
            }
            catch
            {
                Console.WriteLine("Deu erro na Seleção de Pedidos...");
            }
            finally
            {
                conexao.Close();
            }

            return lstPedido;
        }

        public MODEL.Pedido SelectById(int id)
        {
            MODEL.Pedido pedido = new MODEL.Pedido();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Pedido where id=@id";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", id);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                if (reader.Read())
                {
                    
                    pedido.id = Convert.ToInt32(reader[0].ToString());
                    pedido.id_produto = Convert.ToInt32(reader["id_produto"].ToString());
                    pedido.cliente = reader["cliente"].ToString();
                    pedido.mesa = Convert.ToInt32(reader["mesa"].ToString());
                    pedido.status = reader["status"].ToString();
                    pedido.total = Convert.ToSingle(reader["total"].ToString());
                    pedido.qtd = Convert.ToInt32(reader["qtd"].ToString());
                }
            }
            catch
            {
                Console.WriteLine("Deu erro na Seleção de Pedidos...");
            }
            finally
            {
                conexao.Close();
            }
            return pedido;
        }

        public void Insert(MODEL.Pedido pedido)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Insert into Pedido values ( @id_produto, @cliente, @mesa, @status, @total, @qtd);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id_produto", pedido.id_produto);
            cmd.Parameters.AddWithValue("@cliente", pedido.cliente);
            cmd.Parameters.AddWithValue("@mesa",pedido.mesa);
            cmd.Parameters.AddWithValue("@status", pedido.status);
            cmd.Parameters.AddWithValue("@total", pedido.total);
            cmd.Parameters.AddWithValue("@qtd", pedido.status);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Deu erro na inserção de Pedido...");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Update(MODEL.Pedido pedido)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Pedido set id_produto=@id_produto, ";
            sql += " cliente=@cliente, mesa=@mesa, ";
            sql += " status=@status,total=@total, qtd=@qtd where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", pedido.id);
            cmd.Parameters.AddWithValue("@id_produto", pedido.id_produto);
            cmd.Parameters.AddWithValue("@cliente", pedido.cliente);
            cmd.Parameters.AddWithValue("@status", pedido.status);
            cmd.Parameters.AddWithValue("@total", pedido.total);
            cmd.Parameters.AddWithValue("@qtd", pedido.qtd);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Erro na atualização de Produtos");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Delete(MODEL.Pedido pedido)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Delete from Filmes where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", pedido.id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Erro na Remoção de Pedidos");
            }
            finally
            {
                conexao.Close();
            }

        }
    }
}
