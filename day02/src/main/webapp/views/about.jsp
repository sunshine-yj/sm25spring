<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Login --%>
<div class="col-sm-9">

    <h2>About Page</h2>
    <h5>About Us</h5>

    <form action="/registertestimpl" method="post">
        <!-- RadioButton -->
        <div class="form-check-inline">
            <label class="form-check-label">
                <input type="checkbox" class="form-check-input" value="1" name="choose">선택 1
            </label>
        </div>
        <div class="form-check-inline">
            <label class="form-check-label">
                <input type="checkbox" class="form-check-input" value="2" name="choose">선택 2
            </label>
        </div>
        <div class="form-check-inline">
            <label class="form-check-label">
                <input type="checkbox" class="form-check-input" value="3" name="choose">선택 3
            </label>
        </div>
        <hr>

        <div class="form-check">

            <label class="form-check-label">
                <input type="radio" class="form-check-input" name="gender" value="F">Female
            </label>
        </div>
        <div class="form-check">
            <label class="form-check-label">
                <input type="radio" class="form-check-input" name="gender" value="M">Male
            </label>
        </div>
        <hr>
        <!-- CheckBox -->
        <div class="form-check">
            <label class="form-check-label" for="check1">
                <input type="checkbox" class="form-check-input" id="check1" name="hobby" value="1">Eat
            </label>
        </div>
        <div class="form-check">
            <label class="form-check-label" for="check2">
                <input type="checkbox" class="form-check-input" id="check2" name="hobby" value="2">Study
            </label>
        </div>
        <div class="form-check">
            <label class="form-check-label" for="check2">
                <input type="checkbox" class="form-check-input" id="check2" name="hobby" value="3">Coding
            </label>
        </div>
        <!-- Select -->
        <div class="form-group">
            <label for="sel1">Select list:</label>
            <select class="form-control" id="sel1" name="car">
                <option value="K1">K1</option>
                <option value="K1">K2</option>
                <option value="K1">K3</option>
                <option value="K1">K4</option>
            </select>
        </div>
        <hr>
        <!-- Range -->
        <input type="range" class="form-control-range" name="range" min="0" max="100" value="0">
        <hr>
        <!-- Calendar -->
        <input type="date" name="date">
        <hr>
        <button type="submit" class="btn btn-primary">Register</button>
    </form>

</div>
