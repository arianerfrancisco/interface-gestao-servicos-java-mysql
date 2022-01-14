package br.com.infox.dal;
import java.sql.*;

public class ModuloConexao {
    // metodo responsavel por estabelecer a conexao com o banco
    public  static Connection conector(){
    Connection conexao = null;
    // a linha abaixo 'chama' o driver
    String driver="com.mysql.cj.jdbc.Driver";
    // armazenando informacoes referente ao BD
    String url ="jdbc:mysql://127.0.0.1:3306/dbinfox?characterEncoding=utf-8";
    String user="dba";
    String password="Infox123456";
    // estabelecendo a conexao com o banco
        try {
            Class.forName(driver);
            conexao=DriverManager.getConnection(url,user,password);
            return conexao;
        } catch (Exception e) {
            // a linha abaixo serve de apoio para esclarecer o erro
            //System.out.println(e);
            return null;
        }
    }
}