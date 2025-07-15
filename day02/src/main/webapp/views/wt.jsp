<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    #wt1 {
        width: 500px;
        border: 2px solid black;
    }
</style>

<script>
    let center = {
        init:function () {

            let url='https://api.openweathermap.org/data/2.5/weather?id=1835848&appid=38da5a1682617e4f70fea37a6e41fa5f';
            $.ajax({

            });

        }
    }
</script>

<div class="col-sm-9">

    <h2>Weather Page</h2>
    <div class="wt" id="wt1"></div>

</div>
