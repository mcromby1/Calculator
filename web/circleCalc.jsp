<%-- 
    Document   : calcresults
    Created on : Sep 3, 2015, 2:37:47 AM
    Author     : user test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rectangle Calculator</title>
    </head>
    <body>
        <%
            Object obj = request.getAttribute("calcResult");
            if (obj != null) {
                Double results = (Double) obj;
                out.print("<p>The area of the circle is : " + results.toString() + "</p>");
            } else {

            }

        %>
        <form id="calc" name="calc" method="POST" action="calcmain">
            <table>
                <tr><td>Radius: <input type="text" id="radius" name="width" value=""/></td></tr>
                <tr><td><input type="submit" id="submit" name="submit" value="Circle"/></td></tr>
            </table>
        </form> 
    </body>
</html>
