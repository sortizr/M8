<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.lang.*"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Canvi de password</title>
	<style>
		body{text-align:center;}
		label {margin-left: 5px;}
	</style>
</head>
<body> 
	<h1>Canvi de password</h1>
	<form action="#" onsubmit="">
		<label for="pass_nova_1">Password nova:</label><br>
		<input type="password" name="password"><br><br>
		
		<label for="pass_nova_2">Password nova (una altre vegada):</label><br>
		<input type="password" name="password"><br><br>
		
		<label>
			<input type="checkbox" name="huma" id="huma" value="huma">
			Marca si ets un humà
		</label>
		<br>
		<label>
			<input type="checkbox" name="robot" id="robot" value="robot">
			Marca si ets un robot
		</label>
		<br><br>
		<input type="submit" value="Canviar">
	</form>
	<%
		String huma = request.getParameter("huma");
		String robot = request.getParameter("robot");
		
		 if (huma == null && robot == null){
			   out.print("<span>Has de emplenar tots els camps necesarris</span>");
			}else {
				if (huma != null && robot == null){
					out.print("<span>El canvi de password s'ha efectuat correctament</span>");
				}
				if (huma == null && robot != null){
					out.print("<span>Robot no pots canviar la password</span>");
				}
			}
	 %>
</body>
</html>