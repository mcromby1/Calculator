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

        <form id="calc" name="calc" method="POST" action="calcmain">
            <table>
                <tr><td>Width: <input type="text" id="width" name="width" value=""/></td></tr>
                <tr><td>Length: <input type="text" id="length" name="length" value=""/></td></tr>
                <tr><td><input type="submit" id="submit" name="submit" value="Triangle"/></td></tr>
            </table>
        </form> 
    </body>
</html>
