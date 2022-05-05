<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Arrays,java.util.List"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insertar</title>
</head>
<body>
<%// variables per fer la connexio:
	 String user="m08";
	String password="m08";
	String host="localhost";
	String db = "RPG_Joc";
	String url = "jdbc:mysql://"+host+"/"+db;
	Connection conn = null;
	Statement statement = null;
	ResultSet rs = null;
	
	String nom=request.getParameter("nom");
	String race=request.getParameter("race");
	String fue=request.getParameter("fue");
	int nfue=Integer.parseInt(fue);
	String des=request.getParameter("des");
	int ndes=Integer.parseInt(des);
	String con=request.getParameter("con");
	int ncon=Integer.parseInt(con);
	String inte=request.getParameter("int");
	int nint=Integer.parseInt(inte);
	String sab=request.getParameter("sab");
	int nsab=Integer.parseInt(sab);
	String car=request.getParameter("car");
	int ncar=Integer.parseInt(car);
	String pv=request.getParameter("pv");
	int npv=Integer.parseInt(pv);
	String pm=request.getParameter("pm");
	int npm=Integer.parseInt(pm);

	try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		conn = DriverManager.getConnection(url, user, password);
		statement = conn.createStatement();
		int i=statement.executeUpdate("insert into Carta(NOM_carta,RACE_carta,FUE_carta,DES_carta,CON_carta,INT_carta,SAB_carta,CAR_carta,PV_carta,PM_carta)values('"+nom+"','"+race+"',"+nfue+","+ndes+","+ncon+","+nint+","+nsab+","+ncar+","+npv+","+npm+")");
		out.println("Data is successfully inserted!");
	}catch(SQLException error) {
	out.print("Error de Conexión : "+error.toString());
	} 

%>
</body>
</html>