package jdbc;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbUtils {
/*
	public static final String URL = "jdbc:mysql://localhost:3306/test";
	public static final String USER = "root";
	public static final String PASSWORD = "root";
	private static Connection conn = null;
	private static Statement stmt = null; 
	
	 static
	 {
		try{
			//1���������ݿ�����
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("数据库加载驱动");
			//2����ȡ���ݿ�����
			conn = DriverManager.getConnection(URL,USER,PASSWORD);
			//3��ʹ�����ݿ����Ӵ���statement
			stmt =conn.createStatement();
		}catch(Exception e){
			writeLog(""+e.getMessage());
			e.printStackTrace();
		}
	}
	
	public static Connection getConn() {
		return conn;
	}
	
	public static ResultSet executeQuery(String sql){
		
		ResultSet st = null;
		try {
			st = stmt.executeQuery(sql);
		} catch (SQLException e) {
			writeLog(""+e.getMessage());
			e.printStackTrace();
		}
		
		return st;
	}
	
	public static int executeUpdate(String sql){
		
		try {
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			writeLog(""+e.getMessage());
			e.printStackTrace();
		}
		return 0;
	}
	
	public  static void writewrite ()
	{
		File file = new File("E:\\xxxxxx");
		if(!file.exists()){
			file.mkdir();
		}
		File fileLog = new File("E:\\xxxxxx\\fucaa.txt");
		if(file.exists()){
			try {
				fileLog.createNewFile();
			} catch (IOException e) {
				System.out.println("����SQL��־�ļ�����");
			}
		}
	}
	
	public static void writeLog(String err){
		
		File file = new File("log");
		if(!file.exists()){
			file.mkdir();
		}
		File fileLog = new File("log\\sqlLog.txt");
		if(!file.exists()){
			try {
				file.createNewFile();
			} catch (IOException e) {
				System.out.println("����SQL��־�ļ�����");
			}
		}
		try {
			FileWriter fw = new FileWriter(fileLog,true);
			fw.write(err+"\r\n");
			fw.close();
		} catch (IOException e) {
			System.out.println("д��SQL��־�ļ�����");
		}
	}
	*/
	public static boolean isEmpty(String str){
		if(str==null || str==""){
			return true;
		}else{
			return false;
		}
		
	}
}
