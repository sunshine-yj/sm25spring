<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    window.onload = function () {
        let hh2 = document.querySelector('h2');
        hh2.innerText = 'Replace';
        let hh3 = document.querySelector('#header3');
        hh3.onclick = function () {
            hh2.innerText = 'click...';
        }
        let buttonClick = document.querySelector('#button_click');
        buttonClick.onclick = function () {
            this.innerText = 'Clicked';
        }

        let aa = document.querySelector('#go_naver')
            aa.onclick = function () {
            let c = confirm('Are you going Now...');
            if(c == true){
                location.href='/login';
            }
        }
    }
</script>

<%-- Center --%>
<div class="col-sm-9">

    <h2>CSS2 CENTER HEADING</h2>
    <h2 id="header3">CSS3 CENTER HEADING</h2>
    <button id="button_click" class="btn btn-block">Click</button>
    <a href="#" id="go_naver">Naver</a>

</div>

