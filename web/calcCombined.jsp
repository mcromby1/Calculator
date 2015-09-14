<%-- 
    Document   : calcCombined
    Created on : Sep 14, 2015, 8:47:49 AM
    Author     : user test
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> 
        <link rel="stylesheet" href="calcStyle.css">
        <title>Area Calculators</title>
    </head>
    <body>
        <c:if test="${calcResult} != null">
            <div id="calcArea">
                <p>Area of ${calcType}: ${calcResult}</p>
            </div>
        </c:if>
        <form id="calcCircle" name="calcCircle" method="POST" action="calcmain">
            <table>
                <tr><td>Radius: <input type="text" id="radius" name="radius" value=""/></td></tr>
                <tr><td><input type="submit" id="submit" name="submit" value="Circle"/></td></tr>
            </table>
        </form>
        <form id="calcRectangle" name="calcRectangle" method="POST" action="calcmain">
            <table>
                <tr><td>Width: <input type="text" id="width" name="width" value=""/></td></tr>
                <tr><td>Length: <input type="text" id="length" name="length" value=""/></td></tr>
                <tr><td><input type="submit" id="submit" name="submit" value="Rectangle"/></td></tr>
            </table>
        </form>
        <form id="calcTriangle" name="calcTriangle" method="POST" action="calcmain">
            <table>
                <tr><td>Width: <input type="text" id="width" name="width" value=""/></td></tr>
                <tr><td>Length: <input type="text" id="length" name="length" value=""/></td></tr>
                <tr><td><input type="submit" id="submit" name="submit" value="Triangle"/></td></tr>
            </table>
        </form> 
    </body>
</html>
