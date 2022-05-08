<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays,java.util.List"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cartas RPG</title>
</head>
<body>
<%
	String user="m08";
	String password="m08";
	String host="localhost";
	String db = "RPG_Joc";
	String url = "jdbc:mysql://"+host+"/"+db;
	Connection conn = null;
	Statement statement = null;
	ResultSet rs = null;

	try{
		Class.forName("com.mysql.jdbc.Driver").newInstance ();
		conn = DriverManager.getConnection(url, user, password);
		statement = conn.createStatement();
		rs=statement.executeQuery("SELECT * FROM Carta");
		out.println(rs);
	}catch(SQLException error) {
		out.print("Error de Conexión : "+error.toString());
	} 
%>
</body>
</html>