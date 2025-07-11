<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Bootstrap 4 Website Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .fakeimg {
            height: 200px;
            background: #aaa;
        }
    </style>
</head>
<body>
<ul class="nav justify-content-end">
    <li class="nav-item">
        <a class="nav-link" href="/login">Login</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/register">Register</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/about">About Us</a>
    </li>
    <%--    <li class="nav-item">--%>
    <%--        <a class="nav-link disabled" href="#">Disabled</a>--%>
    <%--    </li>--%>
</ul>
<%-- header --%>
<div class="jumbotron text-center" style="margin-bottom:0">
    <h1>HTML5 & JavaScript</h1>
    <p>JavaScript, HTML5, CSS, jQuery, AJAX</p>
</div>
<%----%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <a class="navbar-brand" href="/">Home</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/html">HTML</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/css">CSS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/js">JS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/jq">JQuery</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container" style="margin-top: 50px; margin-bottom: 50px;">
    <div class="row">
        <%--    Left Menu    --%>
        <c:choose>
            <c:when test="${left == null}">
                <jsp:include page="left.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="${left}.jsp"/>
            </c:otherwise>

        </c:choose>

        <%--      Center Menu      --%>
        <c:choose>
            <c:when test="${center == null}">
                <jsp:include page="center.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="${center}.jsp"/>
            </c:otherwise>
        </c:choose>
    </div>
</div>

<div class="jumbotron text-center" style="background-color: black; margin-bottom:0; max-height: 10px">
    <p></p>
</div>

</body>
</html>
