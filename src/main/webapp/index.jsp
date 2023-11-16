<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "HELLo i don't know who i am i" %>
</h1>
    <%-- jsp comment --%>
    <%-- Declare variable--%>
    <%! int total = 0;
        int a = 10;
        int b = 20;
    %>

    <%-- Java code in jsp tabe --%>
    <%
      total = a+b+50;
      out.println("total: "+total);
    %>

    <h2><%= "Total Value "+ total %></h2>
    <h2><%= "Total Value "+ (a/b) %></h2>
</body>
</html>