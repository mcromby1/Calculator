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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="calcStyle.css">
        <title>Triangle Calculator</title>
    </head>
    <body>
        <p>Area: ${calcResult}</p>
        <form id="calc" name="calc" method="POST" action="calcmain">
            <table>
                <tr><td>Width: <input type="text" id="width" name="width" value=""/></td></tr>
                <tr><td>Length: <input type="text" id="length" name="length" value=""/></td></tr>
                <tr><td><input type="submit" id="submit" name="submit" value="Triangle"/></td></tr>
            </table>
        </form> 
        <div id="links">
            <a class="btn btn-default" href="rectangleCalc.jsp" role="button">Rectangle</a>
            <a class="btn btn-default" href="circleCalc.jsp" role="button">Circle</a>       
            <a class="btn btn-default" href="triangleCalc.jsp" role="button">Triangle</a>
        </div>
    </body>
</html>
