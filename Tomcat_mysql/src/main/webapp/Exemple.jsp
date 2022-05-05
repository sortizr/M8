<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Practica 1</title>
		<style>
			div#pv {
    			background-color:red;
    			margin: 5px 0px;
    			height: 8px;
			}
			div#pm {
    			background-color:blue;
    			margin: 5px 0px;
    			height: 8px;
			}
</style>
	</head>
	<body>
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

 public int modRaza(int race,int param){
	 int mod=0;
	 switch (param){// fue
	 	case 0: 
	 		switch (race){ //raça
		 		case 0:mod=0;break;
		 		case 1:mod=0;break;
		 		case 2:mod=-2;break;
		 		case 3:mod=-2;break;
		 		case 4:mod=2;break;
		 		default: break;
		 	}
	 		break;
	 	case 1://des
	 		switch (race){ //raça
		 		case 0:mod=2;break;
		 		case 1:break;
		 		case 2:break;
		 		case 3:mod=2;break;
		 		case 4:break;
		 		default: break;
	 		}
 			break;
	 	case 2://con
	 		switch (race){ //raça
		 		case 0:mod=-2;break;		
		 		case 1:break;
		 		case 2:mod=2;break;
		 		case 3:break;
		 		case 4:mod=2;break;
		 		default: break;
		 	}
 			break;
	 	case 3:// int
	 		switch (race){ //raça
		 		case 0:mod=2;break;		
		 		case 1:break;
		 		case 2:break;
		 		case 3:break;
		 		case 4:mod=-2;break;
		 		default: break;
	 		}
 			break;
	 	case 4://sab
	 		switch (race){ //raça
		 		case 0:break;	
		 		case 1:mod=2;break;
		 		case 2:break;
		 		case 3:break;
		 		case 4:break;
		 		default: break;
	 		}
 			break;
	 	case 5://car
	 		switch (race){ //raça
		 		case 0:break;	
		 		case 1:mod=-2;break;
		 		case 2:mod=2;break;
		 		case 3:break;
		 		case 4:mod=-2;break;
		 		default: break;
	 		}
 			break;
	 	default:
	 		break;
	 }
	 return mod;
	 
 }
 
%>
<%
	String noms[]={"Elf","Nan","Gnom","Mitjans","SemiOrc","Huma"};
	String foto[]={"0","1","2","3","4","5"};
	int race_random=(int)(Math.random()*noms.length);
	int dados8=(int)(Math.random()*8+1);
	int dados4=(int)(Math.random()*4+1);
%>
		<p style="margin-left:150px"><strong><% out.print(noms[race_random]); %></strong></p>
		<table border="1">
			<tr>
				<th colspan="2" rowspan="9">
					<img src="img/<% out.print(foto[race_random]); %>.png" width="100px" height="auto">	
				</th>
				<th>Carac.</th>
				<th>Valor Base</th>
				<th>Mod.</th>
				<th>Valor Final</th>
			</tr>
			<tr>
				<td>FUE:</td>
				<td><%int fue=getValor();
				out.print(fue); %></td>
				<td><% int mfue=modRaza(race_random,0);
				out.print(mfue); %></td>
				<td><% out.print(fue+mfue); %></td>
			</tr>
			<tr>
				<td>DES:</td>
				<td><%int des=getValor();
				out.print(des);%></td>
				<td><% int mdes = modRaza(race_random,1); 
				out.print(mdes);%></td>
				<td><% out.print(des+mdes); %></td>
			</tr>
			<tr>
				<td>CON:</td>
				<td><%int con=getValor();
				out.print(con);%></td>
				<td><% int mcon = modRaza(race_random,2); 
				out.print(mcon);%></td>
				<td><% out.print(con+mcon); %></td>
			</tr>
			<tr>
				<td>INT:</td>
				<td><%int inte=getValor();
				out.print(inte); %></td>
				<td><% int minte=modRaza(race_random,3);
				out.print(minte);%></td>
				<td><% out.print(inte+minte); %></td>
			</tr>
			<tr>
				<td>SAB:</td>
				<td><%int sab=getValor();
				out.print(sab); %></td>
				<td><% int msab=modRaza(race_random,4); 
				out.print(msab);%></td>
				<td><% out.print(sab+msab); %></td>
			</tr>
			<tr>
				<td>CAR:</td>
				<td><%int car=getValor();
				out.print(car);%></td>
				<td><% int mcar=modRaza(race_random,5); 
				out.print(mcar);%></td>
				<td><% out.print(car+mcar); %></td>
			</tr>
			<tr>
				<td>P.V(<% int pv = Math.round((con+mcon)*dados8);
						out.print(pv); %>)</td>
				<td colspan="4"><div id="pv" style="width:<% int resultado = ((pv*100)/160);out.print(resultado+"%");%>"> </div></td>
			</tr>
			<tr>
				<td>P.M(<% int pm = Math.round((((inte+minte)+(sab+msab))/2)*dados4);
						out.print(pm); %>)</td>
				<td colspan="4"><div id="pm" style="width:<% int resultado2 = ((pm*100)/160);out.print(resultado2+"%");%>"> </div></td>
			</tr>
		</table>
	</body>
</html>