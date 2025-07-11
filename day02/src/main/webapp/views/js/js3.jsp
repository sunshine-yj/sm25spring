<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    let js3 = {
        init:function(){
            $('#getdata').click(()=>{
                this.getData();
            });
        },
        getData:function(){
            let datas = [
                {id:'id01',name:'이말숙1',age:10},
                {id:'id02',name:'이말숙2',age:20},
                {id:'id03',name:'이말숙3',age:30}
            ];
            this.display(datas);
        },
        display:function(datas){
            let txt = '';
            $(datas).each((index,data)=>{
                txt += '<tr>';
                txt += '<td>'+data.id+'</td>';
                txt += '<td>'+data.name+'</td>';
                txt += '<td>'+data.age+'</td>';
                txt += '</tr>';
            });
            $('#cust_table > tbody').html(txt);
        }
    }
    $().ready(()=>{
        js3.init();
    });
</script>
<%-- Center Page --%>
<div class="col-sm-9">
    <h2>JavaScrip3 Center Page</h2>
    <button type="button" class="btn btn-primary" id="getdata">Primary</button>
    <table id="cust_table" class="table table-striped">
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Age</th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
</div>