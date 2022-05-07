<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RPG Game</title>
<style type="text/css"> 
	h1 {
		font-size: 100px;
	}
	body {
		text-align: center;
	}
	input {
		font-size: 25px;
		margin: 0px 15px;
	}
	button:nth-child(2) {
		background-color: blue;
		color: white;
		padding: 10px;
	}
	button:nth-child(3) {
		background-color: green;
		color: white;
		padding: 10px;
	}
	button:nth-child(4) {
		background-color: red;
		color: white;
		padding: 10px;
	}
</style>
</head>
<body>
	<h1>RPG GAME</h1>
	<button onclick="window.location.href='insertar.jsp'">Insertar carta</button>
	<button onclick="window.location.href='vercartas.jsp'">Ver cartas</button>
	<button onclick="window.location.href='canvi_password.jsp'">Canviar password</button>
</body>
</html>