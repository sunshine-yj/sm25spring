<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Center --%>
<div class="col-sm-9">

    <h2>HTML2 CENTER HEADING</h2>
    <h5>html2 Dropdowns, From, Input</h5>

    <div class="dropdown">
        <button type="button" class="btn btn-primary dropdown-toggle btn-block" data-toggle="dropdown">
            HTML
        </button>
        <div class="dropdown-menu btn-block">
            <a class="dropdown-item" href="/html/html1">HTML 1</a>
            <a class="dropdown-item" href="/html/html3">HTML 3</a>
            <a class="dropdown-item" href="/html/html4">HTML 4</a>
            <a class="dropdown-item" href="/html/html5">HTML 5</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="/html">HTML</a>
        </div>
    </div>
    <br>
    <br>

    <form class="form-inline" action="/action_page.php">
        <label for="email" class="mr-sm-2">Email address:</label>
        <input type="email" class="form-control mr-sm-2" placeholder="Enter email" id="email">
        <label for="pwd" class="mr-sm-2">Password:</label>
        <input type="password" class="form-control mr-sm-2" placeholder="Enter password" id="pwd">
        <div class="form-check mr-sm-2">
            <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> Remember me
            </label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    <br>
    <br>
    <h3>Login</h3>
    <br>
    <div class="form-group">
        <label for="usr">Name:</label>
        <input type="text" class="form-control" id="usr">
    </div>
    <div class="form-group">
        <label for="pwd">Password:</label>
        <input type="password" class="form-control" id="pwd">
    </div>
</div>
