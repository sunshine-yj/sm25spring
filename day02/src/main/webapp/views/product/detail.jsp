<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Center Page --%>
<div class="col-sm-9">
    <h2>Product Add Page</h2>
    <form id="product_update_form">
        <div class="form-group">
            <label for="id">Id:</label>
            <input type="number" readonly class="form-control"  id="id" name="productId">
        </div>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" placeholder="Enter name" id="name" name="productName">
        </div>
        <div class="form-group">
            <label for="price">Price:</label>
            <input type="number" class="form-control" placeholder="Enter price" id="price" name="productPrice">
        </div>
        <div class="form-group">
            <label for="rate">Discount Rate:</label>
            <input type="number" min="0" step="0.1" class="form-control" placeholder="Enter name" id="rate" name="discountRate">
        </div>
        <div class="form-group">
            <label for="pimg">Product Image:</label>
            <input type="text" class="form-control" placeholder="Enter image name" id="pimg" name="productImg">
        </div>
        <div class="form-group">
            <label for="cate">Cate Id:</label>
            <input type="number" class="form-control" placeholder="Enter cate id" id="cate" name="cateId">
        </div>
        <div class="form-group">
            <label for="rdate">Register Date:</label>
            <input type="text" class="form-control" id="rdate" readonly>
        </div>
        <div class="form-group">
            <label for="udate">Update Date:</label>
            <input type="text" class="form-control" id="udate" readonly>
        </div>
        <button type="button" class="btn btn-primary" id="update_btn">Update</button>
        <button type="button" class="btn btn-primary" id="delete_btn">Delete</button>
    </form>

</div>