<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="de.ascdev.demo.helloworldwebapp.Foo"%>
<%@page import="java.util.logging.Logger"%>
<%!
	Foo foo = new Foo();

    private String sayHello(String name) {
        return "Hallo " + name;
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Einfache Beispiele</title>
</head>
<body>
<h1>Ein paar einfache Beispiele</h1>

<h3>Date=<%= new Date() %></h3>
</br>
<h3> Begrüßung: <%= sayHello("Axel") %></h3>
</br>
<h3>Foo: <%= foo.doSomething("Axel") %></h3>
</br>
<h3>Logging</h3>
<%
    // one way to log to the servers log files is via
    System.out.println("First log message.");
    
    // another more professional way is via
    Logger logger = Logger.getLogger(this.getClass().getName());
    logger.severe("Second log message.");        
%>


<h3><a href="../index.jsp">home</a></h3>
</body>
</html>