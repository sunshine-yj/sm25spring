<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    let index = {
        init:function () {
            let url ='/gettime';
            $.ajax({
                url:url,
                success:(data)=>{
                    $('#ctime').text(data);
                },
                error:()=>{}
            });
        }
    }
    $().read(()=>{
        index.init();
    });
</script>

<%-- Center --%>
<div class="col-sm-9">

    <h2>AJAX CENTER HEADING</h2>
    <h5>ajax center</h5>


</div>
