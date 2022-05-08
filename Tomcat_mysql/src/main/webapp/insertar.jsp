<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays,java.util.List"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Generador de cartes RPG</title>
 <link rel="stylesheet" href="css/styles.css" type="text/css" />
</head>
<body>
<style>
	body {
		text-align:center;
		background-color: black;
	}
</style>
<%! 
	public int getValor(){
		int valor=0;
		int[] dados={0,0,0,0};
		
		for(int i=0;i<4;i++){
			dados[i]=(int)(Math.random()*6+1);
		}
		
		Arrays.sort(dados);
		
		for(int i=1;i<dados.length;i++){
			valor+=dados[i];
		}
		return valor;
	}
%>
	<h1>Creació personatge</h1>
	<form action="insertarbd.jsp">
		<label for="nom">Nom:</label>
		<input type="text" name="nom"><br><br>
		<label for="race">Raza:</label>
		<select name="race" id="race">
		  <option value="elfs">Elfs</option>
		  <option value="nans">Nans</option>
		  <option value="gnom">Gnom</option>
		  <option value="semi_Orc">Semi-Orc</option>
		  <option value="humans">humans</option>
		</select>
		<br><br><label>FUE</label>
		<input type="number" name="fue" min="3" max="18">
		
		<br><br><label>DES</label>
		<input type="number" name="des" min="3" max="18">
		
		<br><br><label>CON</label>
		<input type="number" name="con" min="3" max="18">
		
		<br><br><label>INT</label>
		<input type="number" name="int" min="3" max="18">
		
		<br><br><label>SAB</label>
		<input type="number" name="sab" min="3" max="18">
		
		<br><br><label>CAR</label>
		<input type="number" name="car" min="3" max="18"><br><br>
		
		<label for="pv">PV:</label>
		<input type="number" name="pv" min="3" max="18"><br><br>
		
		<label for="pm">PM:</label>
		<input type="number" name="pm" min="3" max="18"><br><br>
		
		<input type="submit" value="Insertar">
		<input type="submit" value="Borrar">
	</form>
</body>
</html>
