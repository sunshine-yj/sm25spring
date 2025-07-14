<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    #img {
        width: 500px;
        height: 300px;
    }

    #results {
        width: 200px;
        border: 2px solid red;
    }
</style>

<script>
    let center = {
        init:function() {
            let url = '/getdata';

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

        },
        display:(data)=>{
            // JSON [{}, {}]
            let result = '';
            $(data).each((index,item)=>{
                let cnt = item.cnt;
                let title = item.title;
                let updown = item.updown;
                result += '<p>' + cnt + ' ' + title + ' ' + updown + '</p>';
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
    <h5>Title description, Sep 2, 2017</h5>
    <img src="/img/bg1.jpg" alt="background1" id="img">
</div>

<div class="col-sm-3">

    <h4>실시간 검색 순위</h4>
    <div id="results"></div>

</div>
