<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    let jq2 = {
        init: function() {
            $('#join > button').click(()=> {
                this.check();
            });
        },
        check:function() {
            let id = $('#id').val();
            let pwd = $('#pwd').val();
            let cp_pwd = $('#cp_pwd').val();
            let email = $('#email').val();
            let nickname = $('#nickname').val();
            let ad_choose = $('#ad_choose').val();
            let im_choose = $('#im_choose').val();
            //let all_choose = $('#all_choose').val();
            if (id == '') {

                alert('ID는 필수 항목 입니다.');
                $('#id').focus();
                return;
            }
            if (pwd == ''){

                alert('PWD는 필수 항목 입니다.');
                $('#pwd').focus();
                return;
            }
            if (!(pwd === cp_pwd)){

                $('#cp_pwd_desc').html('비밀번호가 틀렸습니다.');
                $('#cp_pwd').focus();
                return;
            }
            if (email == ''){

                alert('E-mail는 필수 항목 입니다.');
                $('#email').focus();
                return;
            }
            if (email.search("@") == -1 || email.search(".") == -1){

                $('#email_desc').html('잘못된 형식의 이메일 입니다.');
                $('#email').focus();
                return;
            }
            if (nickname == ''){

                alert('Nickname는 필수 항목 입니다.');
                $('#nickname').focus();
                return;
            }
            if (ad_choose == 0){

                alert('광고 선택은 필수 항목 입니다.');
                $('#ad_choose').focus();
                return;
            }
            if (im_choose == 0){

                alert('개인정보 처리 동의 선택은 필수 항목 입니다.');
                $('#im_choose').focus();
                return;
            }
            // if (all_choose == 1){
            //     ad_choose = 1;
            //     im_choose = 1;
            // }
            this.send();
        },
        send: function () {
            $('#join').attr('method','post');
            $('#join').attr('action','/join');
            $('#join').submit();
        }
    }
    $().ready(()=> {
        jq2.init();
    });
</script>


<%-- Center --%>
<div class="col-sm-9">

    <h2>회원가입</h2>

    <form id = join>

        <div class="form-group">
            <label for="id" id="id_desc">Id</label>
            <input type="text" class="form-control" placeholder="Enter id" id="id" name="id">
        </div>

        <div class="form-group">
            <label for="pwd" id="pwd_desc">Password</label>
            <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="pwd">
        </div>

        <div class="form-group">
            <label for="cp_pwd" id="cp_pwd_desc">Password</label>
            <input type="password" class="form-control" placeholder="Enter password" id="cp_pwd" name="cp_pwd">
        </div>

        <div class="form-group">
            <label for="email" id="email_desc">E-mail</label>
            <input type="email" class="form-control" placeholder="Enter email" id="email" name="email">
        </div>

        <div class="form-group">
            <label for="nickname" id="nickname_desc">Nickname</label>
            <input type="text" class="form-control" placeholder="Enter nickname" id="nickname" name="nickname">
        </div>

        <p>[필수] 개인정보 수집 및 이용</p>

        <div class="form-check-inline">
            <label class="form-check-label">
                <input type="radio" class="form-check-input" value="1" name="im_choose">동의
            </label>
        </div>
        <div class="form-check-inline">
            <label class="form-check-label">
                <input type="radio" class="form-check-input" value="2" name="im_choose">비동의
            </label>
        </div>
        <br>
        <br>

        <p>[선택] 광고 수신 동의</p>

        <div class="form-check-inline">
            <label class="form-check-label">
                <input type="radio" class="form-check-input" value="1" name="ad_choose">동의
            </label>
        </div>
        <div class="form-check-inline">
            <label class="form-check-label">
                <input type="radio" class="form-check-input" value="2" name="ad_choose">비동의
            </label>
        </div>


        <br>
        <br>
        <p> 전체 동의하기</p>
        <div class="form-check-inline">
            <label class="form-check-label">
                <input type="radio" class="form-check-input" value="1" name="all_choose">전체 동의
            </label>
        </div>
        <hr>
        <br>
        <button type="button" class="btn btn-primary">Create</button>
    </form>

</div>
