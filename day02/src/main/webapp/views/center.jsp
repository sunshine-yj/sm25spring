<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    <%--  메인 이미지  --%>
    #img {
        width: 500px;
        height: 300px;
    }
    /**/
    #results {
        width: 170px;
        border: 2px solid black;
    }

    #updown_img {
        width: 20px;
        height: 25px;
    }

    #wh1 {
        width: 500px;
        border: 2px solid greenyellow;
    }

</style>

<script>
    let center = {
        init:function() {
            let url = '/getdata';
            // 처음 데이터 전달
            $.ajax({
                url:url,
                success:(data)=>{
                    console.log(data);
                    this.display(data);
                },
                error:()=>{}
            });
            // 새로운 데이터 전달
            setInterval(()=>{
                $.ajax({
                    url:url,
                    success:(data)=>{
                        console.log(data);
                        this.display(data);
                    },
                    error:()=>{}
                });
            }, 10000);


            let date = new Date();
            let year = date.getFullYear();
            let month = date.getMonth() + 1;
            let day = date.getDate();

            if(month < 10){
                month = '0'+month;
            }
            if(day < 10){
                day = '0'+day;
            }

            let today = year+''+month+''+day+'0600';

            let wh1Url = 'http://apis.data.go.kr/1360000/MidFcstInfoService/getMidFcst'; /*URL*/
            let queryParams = '?' + encodeURIComponent('serviceKey') + '='+'VBW8uhXgyKAauuCP87mKsvrC9zB38NHbAsM5asJVN9tBFuT9PeFfa%2BFYHpM3z69wprsEQnJsU5kdEzD%2BBwezaA%3D%3D';
            queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
            queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
            queryParams += '&' + encodeURIComponent('dataType') + '=' + encodeURIComponent('JSON'); /**/
            queryParams += '&' + encodeURIComponent('stnId') + '=' + encodeURIComponent('108'); /**/
            queryParams += '&' + encodeURIComponent('tmFc') + '=' + encodeURIComponent(today); /**/


            $.ajax({
                url: wh1Url+queryParams,
                success:(data)=>{
                    console.log(data);
                    let wh1Data = data.response.body.items.item[0].wfSv;
                    $('#wh1').text(wh1Data);
                }
            });

        },


        // 데이터 출력
        display:(data)=>{
            // JSON [{}, {}]
            let result = '';
            $(data).each((index,item)=>{
                let cnt = item.cnt;
                let title = item.title;
                let updown = item.updown;
                result += (updown == 0) ? '<p>'+cnt+' '+title+' '+'<img id="updown_img" class="updown" src="/img/up.jpg">'+'</p>'
                    : '<p>'+cnt+' '+title+' '+'<img id="updown_img" class="updown" src="/img/down.jpg">'+'</p>';
            });
            $('#results').html(result);
        }

    }
    $().ready(()=>{
       center.init();
    });
</script>

<%-- Center --%>
<div class="col-sm-7">
    <h2>TITLE HEADING</h2>
    <div class="wh" id="wh1"></div>
</div>
<%-- Right --%>
<div class="col-sm-3">
    <h4>실시간 검색 순위</h4>
    <div id="results"></div>
</div>
