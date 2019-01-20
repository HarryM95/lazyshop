<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="style/style2.css" type="text/css"> 
<head>
<link href="style/bootstrap.css" rel="stylesheet">
<!--  <style>

body {
	font-family: "Helvetica";
	/*font-family: -apple-system, BlinkMacSystemFont, sans-serif; */
	color: #262626;
	font-size: 0.9em;
	letter-spacing: 0.5px;
    top: 0;
    position: relative;
	margin:0; 
	padding-bottom: 50px;
	}
	
	
#scroller {
    position: relative;
    top: 100px;
    width: 100%;
    background: #CCC;
    height: 100px;
}



#left,
#right, #middle {
    display: table;
  	width: 100%;
  	padding-top: 10px;
}

#middle{
	position: absolute;
	left: 35%;
	width: 50%;
}

#left {
  	position: absolute;
  	left: 0px;
  	width: 50%;
  	padding-left: 40px;
  	border:1px;
}

#right {
    position: absolute;
  	right: 0px;
  	width: 50%;

}

.searchbox {
	margin: auto;
	/*padding-top: 10px; */
	/*padding-left: 50px; */
	width: 60%;
	text-align: left;
}

.results {
	margin: auto;
	width: 50%;
	text-align: left;
}



.infoende {
	margin: auto;
	width: 50%;
	text-align: left;
	font-size: 1em;
}


/*Tabellenklassen*/


table.info, table.infoende, table.infosuccess, table.infoerror  {
	width:100%;
	border-top: 1px solid #ddd;
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 5px;
	padding-botton: 10px;	
}

table.infoende {
	border-top: 2px solid #ddd;
}


table.infosuccess {
	background-color: #d4f9d5;
}

table.infoerror {
	background-color: #FFD1D1;
}



table.infoende td.preis{	
	border-top: 1px solid #8f969e;
}
table.infoende td, table.infosuccess td, table.infoerror td{	
	padding-right:5px;
	padding-left:5px;
	padding-top: 5px;
	padding-bottom: 5px;
}

table.ticket, table.ticketfg {
	border-top: 1px solid #ddd;	
	width:100%;
	padding-left: 10px;
	padding-right: 10px;	
}

table.ticket tr, table.ticketfg tr {
	vertical-align: midle;
	overflow: hidden;
    height: 25px;
}
table.ticket td, table.ticketfg fd {
	padding-right:5px;
	padding-left:5px;
	padding-top: 5px;
	padding-bottom: 5px;
}

table.ticketfg {
	/*table-layout:fixed;*/
	overflow:hidden;
	
}
</style> -->
</head>
<body>
<form action="AenderungsServlet" method="post">
<div class="infoende">
	<h2>Rechnungsadresse bearbeiten</h2>
	<br>
		<table class="infosuccess" border="0">
			<col style="width:20%">
			<col style="width:10%">
		  	<tr><td><br></td></tr>   
		    <tr>
		    	<td>Bitte aendern Sie die Adresse!</td>
		    </tr>
		    <tr><td><br></td></tr>    
		</table>		
	</div>
	<br>
	<br>
<div class="results">
			<h3>Bestellungsdaten</h3>
			<br>
			<table class="infoende" border="0">
				<col style="width: 10%">
				<col style="width: 20%">
				<col style="width: 10%">
				<col style="width: 20%">

				<tr>
					<td class="text-muted">Bestellungsnummer:</td>
					<td>${buchid}</td>
				</tr>
				<tr>
					<td class="text-muted">Datum:</td>
					<td>${datum}</td>
				</tr>
				<tr>
					<td class="text-muted">Status:</td>
					<td>${status}</td>					
				</tr>
				<tr>
					<td class="text-muted">Adresse:</td>
					<td><input type="text" name="add" required value="${adresse}"></td>					
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="submit" class="btn btn-success btn-md" value="Speichern" name="action">		
					</td>
				</tr>
				</table>
				</br>
				<div align="right">
				<a href="index" class="btn btn-info">Home</a>
				</div>
</div>
</form>


</body>

</html>