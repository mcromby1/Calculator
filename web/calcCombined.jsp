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
        <c:if test="${calcResult != null}">
            <p>Area of ${calcType}: ${calcResult}</p>
        </c:if>
        <form class="form-inline" id="calcCircle" name="calcCircle" method="POST" action="calcmain" value="Circle">
            <div class="form-group">
                <label for="radius">Radius</label>
                <input type="text" id="radius" name="radius" value=""/>
            </div>
            <button type="submit" id="submit" name="submit" value="Circle">Submit Radius</button>
        </form>
        <form class="form-inline" id="calcRectangle" name="calcRectangle" method="POST" action="calcmain" value="Rectangle">
            <div class="form-group">
                <label for="width">Width:</label>
                <input type="text" id="width" name="width" value=""/>
            </div>
            <div class="form-group">
                <label for="length">Length: </label>
                <input type="text" id="length" name="length" value=""/>
            </div>
            <button type="submit" id="submit" name="submit" value="Rectangle">Submit Rectangle</button>
        </form>
        <form class="form-inline" id="calcTriangle" name="calcTriangle" method="POST" action="calcmain" value="Triangle">
            <div class="form-group">
                <label for="width">Width:</label>
                <input type="text" id="width" name="width" value=""/>
            </div>
            <div class="form-group">
                <label for="length">Length: </label>
                <input type="text" id="length" name="length" value=""/>
            </div>
            <button type="submit" id="submit" name="submit" value="Triangle">Submit</button>
        </div>
    </form> 
</body>
</html>
