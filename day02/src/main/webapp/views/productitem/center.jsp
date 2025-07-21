<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
    <c:when test="${sessionScope.logincust.custId == 'admin'}">
        <div class="col-sm-09">
            <h2>Product Item Center Admin Page</h2>
        </div>
    </c:when>
    <c:otherwise>
        <%-- Center Page --%>
        <div class="col-sm-12">
            <h2>Product Item Center Page</h2>

        </div>
    </c:otherwise>
</c:choose>
