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

            let wt1url='https://api.openweathermap.org/data/2.5/weather?id=1835848&appid=&units=metric&lang=kr';

            $.ajax({
                url: wt1url,
                success: function (data) {
                    console.log(data);

                    let wd = data.weather[0].description;
                    let wr = data.main.temp;
                    let w = data.wind.speed;

                    // 결과 출력
                    $('#wt1').text('날씨: ' + wd +' '+ '온도: '+ wr +' '+'풍속: '+ w);
                }
            });

        }
    }
    $(document).ready(function() {
        center.init(); // 페이지 로드 시 실행
    });
</script>

<div class="col-sm-9">

    <h2>Weather Page</h2>
    <div class="wt" id="wt1"></div>

</div>
