<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.util.logging.Logger"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editor</title>
</head>
<body>
<h1>Editor</h1>

<form action="editor.jsp" method="GET">
<textarea name="text" rows="4" cols="40">
<%
    try {
        BufferedReader br =
            new BufferedReader(new FileReader("editor.txt"));
        StringBuffer sb = new StringBuffer();
        while (true) {
            String line = br.readLine();
            if (line == null) {
                break;
            }
            sb.append(line);
        }
        out.println(sb);
    } catch (Exception e) {
    	Logger logger = Logger.getLogger(this.getClass().getName());
        logger.severe("Exception occured: " + e); 
        out.println("Type something here and save it!");
    }
%>
</textarea>
</br>
<input type="submit" value="Speichern"/>
</form>
</br>
<h3><a href="../index.jsp">home</a></h3>
</body>
</html>