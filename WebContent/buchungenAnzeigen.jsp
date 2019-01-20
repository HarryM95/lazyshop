
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.time.LocalDateTime"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page import="data.Buchung"%>

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
</style>-->
<title>Buchungen anzeigen</title>
</head>
<body>
<!--  <form action="ReservierungServlet" method="GET"> -->
	<%
	
	ArrayList<Buchung> resList = (ArrayList<Buchung>) request.getAttribute("list");
	%>
<div class="results">
		<h3>Buchungen</h3>
		<hr>
				<% 
				if(resList != null && resList.size() == 0) {
					%>
					<table class="infoerror">
					<tr>
					<td>Keine Buchungen vorhanden!</td></tr>
					</table>
					
					<%
				}
				if(resList != null)
				for (Buchung b : resList) {
		%>
		<table class="infoende">

			<tr>
				<td>
					<h4>
						Buchung # <%
						out.println(b.getBuchid());
					%>
					</h4> 

						<table class="ticket" border="0">
						<tr>
							<td>Datum</td>
							<td><%
									out.println(b.getDatum());
								%>
							</td>
						</tr>
						<tr>
							<td>
							Status
							</td>
							<td>
								<%
									out.println(b.getStatus());
								%> 
							</td>

						</tr>
						<tr>
							<td>
							Stil
							</td>
							<td>	<%
									out.println(b.getStil());
								%> </td>
						</tr>

						<tr>
							<td>Preis
							
							</td>
							<td>	<%
									out.println(b.getPreis());
								%> </td>
						</tr>
												<tr>
							<td>Adresse
							
							</td>
							<td>	<%
									out.println(b.getAdresse());
								%> </td>
						</tr>

					</table>
					<%
				//	}; 
				%>
				</td>
			</tr>
		</table>
				
		<table width="100%">
		
			<col style="width: 60%">
			<col style="width: 10%">
			<col style="width: 10%">
			
			<tr>
				<td></td>
				<td></td>
				<td>
				<form action="AenderungsServlet" method="post">
					<input class="btn btn-secondary"  type="submit" value="Adresse aendern" name="action">
					<input type="hidden" name="buchID" value="<%=b.getBuchid()%>">
					<input type="hidden" name="datum" value="<%=b.getDatum()%>">
					<input type="hidden" name="status" value="<%=b.getStatus()%>">
					<input type="hidden" name="adresse" value="<%=b.getAdresse()%>">	
				</form>	
				</td>
				<td width="2%"></td>
				<td>
				<form action="AenderungsServlet" method="post">
					<input class="btn btn-danger btn-md"  type="submit" value="Absagen" name="action">
					<input type="hidden" name="buchID" value="<%=b.getBuchid()%>">
				</form>		
				</td>			
				
			</tr>
		</table>
		</br>
		<% } %>
		</div>
		<!--  </form> -->
</body>
</html>