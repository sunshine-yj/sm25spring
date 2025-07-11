<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    #resualts {
        width: 400px;
        border: 2px solid red;
    }
</style>

<script>
    let js2 = {
        init:function () {
            document.querySelector('#getdata').onclick = ()=>{
                this.getData();
            }
        },
        getData:function () {
            let datas = [
                {id:'id01', name:'이말숙', age:10},
                {id:'id02', name:'고말숙', age:20},
                {id:'id03', name:'김말숙', age:30}
            ];
            this.display(datas);
        },
        display:function (datas) {
            let txt = '';
            for (let i = 0; i < datas.length; i++) {
                let id = datas[i].id;
                let name = datas[i].name;
                let age = datas[i].age;
                txt += '<p>';
                txt += id + ' ' + name + ' ' + age;
                txt += '</p>';
            }
            document.querySelector('#resualts').innerHTML = txt;
        }
    }
    // function display() {
    //
    // }
    // function getData() {
    //     display();
    // }
    window.onload = function () {
        // document.querySelector('#getdata').onclick = function () {
        //     getData();
        // }
        js2.init();
    }
</script>

<%-- Center --%>
<div class="col-sm-9">

    <h2>JS2 CENTER HEADING</h2>
    <button type="button" class="btn btn-primary">Primary</button>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Firstname</th>
            <th>Lastname</th>
            <th>Email</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>John</td>
            <td>Doe</td>
            <td>john@example.com</td>
        </tr>
        <tr>
            <td>Mary</td>
            <td>Moe</td>
            <td>mary@example.com</td>
        </tr>
        <tr>
            <td>July</td>
            <td>Dooley</td>
            <td>july@example.com</td>
        </tr>
        </tbody>
    </table>

</div>
