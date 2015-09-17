<%-- 
    Document   : calcCombined
    Created on : Sep 14, 2015, 8:47:49 AM
    Author     : user test
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css"> 
        <!-- <link rel="stylesheet" href="calcStyle.css"> -->
        <title>Area Calculators</title>
    </head>

    <body>
        <div class="container">
            <!-- <c:if test="${calcResult != null}">
                 <p>Area of ${calcType}: ${calcResult}</p>
            </c:if> -->

            <div class="row">

                <div class="panel panel-default col-md-4 col-sm-4 col-xs-6">
                    <div class="panel-heading"><h1>Circle</h1></div>
                    <div class="panel-body">
                        <form role="form" class="form-horizontal" id="calcCircle" name="calcCircle" method="POST" action="calcmain" value="Circle">
                            <div class="form-group">
                                <label for="radius">Radius:</label>
                                <input class="form-control" type="text" id="radius" name="radius" value=""/>
                            </div>
                            <button class="btn-default" type="submit" id="submit" name="submit" value="Circle">Submit</button>
                        </form>
                        <c:choose>
                            <c:when test="${calcType == 'Circle'}">
                                <c:if test="${calcResult != null}">
                                    <p>Area of ${calcType}: <fmt:formatNumber type="number" pattern="#0.##" value="${calcResult}"/></p>
                                </c:if>
                            </c:when>
                            <c:otherwise><p><br></p></c:otherwise>  
                            </c:choose>
                    </div>
                </div>

                <div class="panel panel-default col-md-4 col-sm-4 col-xs-6">
                    <div class="panel-heading"><h1>Rectangle</h1></div>
                    <div class="panel-body">
                        <form role="form" class="form-horizontal" id="calcRectangle" name="calcRectangle" method="POST" action="calcmain" value="Rectangle">
                            <div class="form-group">
                                <label for="width">Width:</label>
                                <input class="form-control" type="text" id="width" name="width" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="length">Length: </label>
                                <input class="form-control" type="text" id="length" name="length" value=""/>
                            </div>
                            <button class="btn-default" type="submit" id="submit" name="submit" value="Rectangle">Submit</button>
                        </form>
                        <c:choose>
                            <c:when test="${calcType == 'Rectangle'}">
                                <c:if test="${calcResult != null}">
                                    <p>Area of ${calcType}: <fmt:formatNumber type="number" pattern="#0.##" value="${calcResult}"/></p>
                                </c:if>
                            </c:when>
                            <c:otherwise><p></p></c:otherwise>  
                        </c:choose>
                    </div>
                </div>
                <div class="panel panel-default col-md-4 col-sm-4 col-xs-6">
                    <div class="panel-heading"><h1>Triangle</h1></div>
                    <div class="panel-body">
                        <form role="form" class="form-horizontal" id="calcTriangle" name="calcTriangle" method="POST" action="calcmain" value="Triangle">
                            <div class="form-group">
                                <label for="width">Width:</label>
                                <input class="form-control" type="text" id="width" name="width" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="length">Length: </label>
                                <input class="form-control" type="text" id="length" name="length" value=""/>
                            </div>
                            <button class="btn-default" type="submit" id="submit" name="submit" value="Triangle">Submit</button>
                        </form> 
                        <c:choose>
                            <c:when test="${calcType == 'Triangle'}">
                                <c:if test="${calcResult != null}">
                                    <p>Area of ${calcType}: <fmt:formatNumber type="number" pattern="#0.##" value="${calcResult}"/></p>
                                </c:if>
                            </c:when>
                            <c:otherwise><p></p></c:otherwise>  
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
