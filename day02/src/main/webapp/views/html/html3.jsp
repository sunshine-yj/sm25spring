<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Center --%>
<div class="col-sm-9">

    <h2>HTML3 CENTER HEADING</h2>
    <h5>html3 Carousel</h5>

    <div id="demo" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1" class="active"></li>
            <li data-target="#demo" data-slide-to="2" class="active"></li>
        </ul>

        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/img/bg1.jpg" alt="background1">
            </div>
            <div class="carousel-item">
                <img src="/img/bg2.jpg" alt="background2">
            </div>
            <div class="carousel-item">
                <img src="/img/bg3.jpg" alt="background3">
            </div>
        </div>

        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>

</div>
