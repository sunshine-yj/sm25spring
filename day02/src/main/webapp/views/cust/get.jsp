<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Center --%>
<div class="col-sm-9">

    <h2>Cust Get Page</h2>
    <table class="table table-striped table-header">
        <thead>
            <tr>
                <th>Id</th>
                <th>Pwd</th>
                <th>Name</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="c" items="${clist}">
                <tr>
                    <td>${c.custId}</td>
                    <td>${c.custPwd}</td>
                    <td>${c.custName}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
