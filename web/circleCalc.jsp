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
        <title>Rectangle Calculator</title>
    </head>
    <body>
        <div id="calcArea"
             <p>Area: ${calcResult}</p>
            <form id="calc" name="calc" method="POST" action="calcmain">
                <table>
                    <tr><td>Radius: <input type="text" id="radius" name="radius" value=""/></td></tr>
                    <tr><td><input type="submit" id="circleSubmit" name="circleSubmit" value="Circle"/></td></tr>
                </table>
            </form> 
        </div>
        <div id="links">
            <a class="btn btn-default" href="rectangleCalc.jsp" role="button">Rectangle</a>
            <a class="btn btn-default" href="circleCalc.jsp" role="button">Circle</a>       
            <a class="btn btn-default" href="triangleCalc.jsp" role="button">Triangle</a>
        </div>
    </body>
</html>
