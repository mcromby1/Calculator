<%-- 
    Document   : calcCombined
    Created on : Sep 14, 2015, 8:47:49 AM
    Author     : user test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area Calculators</title>
    </head>
    <body>
    <c:if test="${calcResult} != null">
        <p>Area of ${calcType}: ${calcResult}</p>
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
    <form id="calc" name="calc" method="POST" action="calcmain">
        <table>
            <tr><td>Width: <input type="text" id="width" name="width" value=""/></td></tr>
            <tr><td>Length: <input type="text" id="length" name="length" value=""/></td></tr>
            <tr><td><input type="submit" id="submit" name="submit" value="Triangle"/></td></tr>
        </table>
    </form> 
</body>
</html>
