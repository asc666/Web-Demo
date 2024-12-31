<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.StringReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.logging.Logger"%>

<%!String menu = "Best Pizza\n" + "Margherita: tomato sauce, mozzarella\n"
			+ "Funghi: tomato sauce, mozzarella, mushrooms\n" + "Capricciosa: tomato sauce, mozzarella, mushrooms, ham,"
			+ "eggs, artichoke, cocktail sausages, green olives\n"
			+ "Quattro Stagioni: tomato sauce, mozzarella, ham, black "
			+ "olives, mushrooms, artichoke, peas, salami, eggs\n"
			+ "Vegetariana: tomato sauce, mozzarella, mushrooms, onion, " + "(artichoke), sweet corn, green peppers\n"
			+ "Quattro Formaggi: tomato sauce, and 4 assorted cheeses, "
			+ "generally mozzarella, parmesan cheese, blue cheese, and goat cheese\n";
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pizza Menü</title>
</head>
<body>
	<h1>Best Pizza</h1>
	<%
	BufferedReader br = new BufferedReader(new StringReader(menu));
	String line = null;

	try {
		out.println("<ul>");
		while ((line = br.readLine()) != null) {
			String[] pizz = line.split(":");

			if (pizz != null && pizz.length > 1) {
				out.println("<li><b>" + pizz[0] + ":</b>" + pizz[1] + "</li>");
			}
		}
		out.println("</ul>");
	} catch (IOException e) {
		Logger logger = Logger.getLogger(this.getClass().getName());
		logger.severe("Exception occured: " + e);
	}
	%>
	<br />
	<h3>
		<a href="../index.jsp">home</a>
	</h3>
</body>
</html>