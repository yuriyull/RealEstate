<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<head>
    <title>회원가입</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
</head>
<style>
body {
    position: relative;
    background: #f5f6f7;
    display: block;
}
body, html {
    width: 100%;
    height: 100%;
}
body, button, input, select, table, textarea {
    font-family: 'Nunito Sans', sans-serif;
    font-size: 12px;
}
body, button, dd, dl, dt, fieldset, form, h1, h2, h3, h4, h5, h6, input, legend, li, ol, p, select, table, td, textarea, th, ul {
    margin: 0;
    padding: 0;
}
#wrap {
    width: 100%;
}
div {
    display: block;
}
#header.join_membership {
    padding-bottom: 20px;
}
#header {
    position: relative;
    overflow: hidden;
    padding: 60px 0 54px;
    box-sizing: border-box;
}
#container, #footer, #header {
    margin: 0 auto;
    max-width: 768px;
    min-width: 460px;
}
h1 {
    display: block;
    font-size: 2em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
#header .h_logo {
    display: block;
    margin: 0 auto;
    width: 240px;
    height: 44px;
    background-repeat: no-repeat;
    background-position: 0 0;
    background-size: 240px auto;
    font-size: 50px;
    color: #1f3c88;
}
a {
    text-decoration: none;
    cursor: pointer;
}
form {
    display: block;
}
#container {
    width: auto;
    max-width: 768px;
}
#content {
    width: 460px;
    margin: 0 auto;
}
.ipin_box, .row_group {
    overflow: hidden;
    width: 100%;
}
.join_title {
    margin: 19px 0 8px;
    font-size: 14px;
    font-weight: 700;
}
label {
    cursor: pointer;
}
.ps_box.int_id, .ps_box.int_id input {
    background: #fff;
    outline: 0;
}
.ps_box, .ps_box_disable {
    display: block;
    position: relative;
    width: 100%;
    height: 51px;
    border: solid 1px #dadada;
    padding: 10px 110px 10px 14px;
    background: #fff;
    box-sizing: border-box;
}
.ps_box.int_id, .ps_box.int_id input {
    background: #fff;
    outline: 0;
}
.int {
    display: block;
    position: relative;
    width: 100%;
    height: 29px;
    padding-right: 25px;
    line-height: 29px;
    border: none;
    background: #fff;
    font-size: 15px;
    box-sizing: border-box;
    z-index: 10;
}
button, input, select, textarea {
    border-radius: 0;
    appearance: none;
    text-decoration: none;
    cursor: pointer;
}
.row_group+.row_group {
    margin-top: 20px;
}
.ipin_box, .row_group {
    overflow: hidden;
    width: 100%;
}
.box_right_space {
    padding-right: 14px;
    box-sizing: border-box;
}
.ps_box.int_pass, .ps_box.int_pass_check, .ps_box.int_pass_check2 {
    padding-right: 40px;
}
.join_birthday {
    padding: 0;
}
.bir_wrap, .name_wrap {
    display: table;
    width: 100%;
}
.join_birthday .ps_box {
    padding: 11px 14px;
}
.bir_mm+.bir_dd, .bir_yy+.bir_mm {
    padding-left: 10px;
}
.bir_dd, .bir_mm, .bir_yy {
    display: table-cell;
    table-layout: fixed;
    width: 147px;
    vertical-align: middle;
}
:root .sel {
    background: #fff url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100% 50% no-repeat;
    background-size: 20px 8px;
}
.sel {
    width: 100%;
    height: 29px;
    font-size: 15px;
    line-height: 18px;
    color: #000;
    border: none;
    border-radius: 0;
}
option {
    font-weight: normal;
    display: block;
    white-space: nowrap;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}
.btn_area {
    margin: 30px 0 9px;
}
.btn_primary {
    color: #fff;
    border: solid 1px rgba(0,0,0,.08);
    background-color: #1f3c88;
}
.btn_type {
    display: block;
    width: 100%;
    padding: 15px 0 15px;
    font-size: 18px;
    font-weight: 700;
    text-align: center;
    cursor: pointer;
    box-sizing: border-box;
}
</style>
<body>
<%@ include file="navbar.jsp" %>
    <div id="wrap">
        <div id="header" class="join_membership" role="banner">
            <h1>
                <a href="/RealEstate/home" class="h_logo">
                    <span class="blind">Homeland</span>
                </a>
            </h1>
        </div>
        <form:form id="join_form" action="register" modelAttribute="registerRequest" style="padding-bottom:100px;">
            <div id="container">
                <div id="content">
                    <!--아이디 비밀번호 입력-->
                    <div class="join_content">
                        <div class="row_group">
                            <div class="join_row">
                                <h3 class="join_title">
                                    <label for="id">아이디</label>
                                </h3>
                                <span class="ps_box int_id">
                                    <form:input type="text" id="id" path="id" class="int" title="ID" maxlength="20"/>
                                </span>
                            </div>
                            <div class="join_row">
                                <h3 class="join_title">
                                    <label for="id">비밀번호</label>
                                </h3>
                                <span class="ps_box int_pass">
                                    <form:input type="password" id="pswd1" path="password" class="int" title="비밀번호 입력" maxlength="20"/>
                                </span>
                                <h3 class="join_title">
                                    <label for="pswd2">비밀번호 재확인</label>
                                </h3>
                                <span class="ps_box int_pass_check" id="pswd2Img">
                                    <form:input type="password" id="pswd2" path="confirmPassword" class="int" title="비밀번호 재확인 입력" maxlength="20"/>
                                </span>
                            </div>
                        </div>
                    </div>
                    <!--아이디 비밀번호 입력-->

                    <!--이름, 생년월일, 성별, 이메일 입력-->
                    <div class="row_group">
                        <div class="join-row">
                            <h3 class="join_title">
                                <label for="name">이름</label>
                            </h3>
                            <span class="ps_box box_right_space">
                                <form:input type="text" id="name" path="name" title="이름" class="int" maxlength="40"/>
                            </span>                            
                        </div>
                        <div class="join_row join_birthday">
                            <h3 class="join_title">
                                <label for="yy">생년월일</label>
                            </h3>
                            <div class="bir_wrap">
                                <div class="bir_yy">
                                    <span class="ps_box">
                                        <form:input type="date" path="birth" aria-label="년(4자)" class="int"/>
                                    </span>
                                </div> 
                            </div>
                            <div class="join_row join_sex">
                                <h3 class="join_title">
                                    <label for="gender">성별</label>
                                </h3>
                                <div class="ps_box gender_code">
                                    <form:select id="gender" path="gender" class="sel" aria-label="성별">
                                        <form:option value="">성별</form:option>
                                        <form:option value="M">남자</form:option>
                                        <form:option value="F">여자</form:option>
                                        <form:option value="U">선택 안함</form:option>
                                    </form:select>
                                </div>
                            </div>
                            <div class="join_row join_email">
                                <h3 class="join_title">
                                    <label for="email">
                                        본인 확인 이메일
                                        <span class="terms_choice">(선택)</span>
                                    </label>
                                </h3>
                                <span class="ps_box int_email box_right_space">
                                    <form:input type="text" id="email" path="email" placeholder="선택입력" aria-label="선택입력" class="int" maxlength="100"/>
                                </span>
                            </div>
                        </div>
                    </div>
                    <!--이름, 생년월일, 성별, 이메일 입력-->

                    <!--휴대전화 번호 입력-->
                    <div class="join_row join_mobile" id="mobDiv">
                        <h3 class="join_title">
                            <label for="phoneNo">휴대전화</label>
                        </h3>
                        <span class="ps_box int_mobile">
                            <form:input type="tel" id="phone" path="phone" placeholder="전화번호 입력" aria-label="전화번호 입력" class="int" maxlength="16"/>
                        </span>
                    </div>
                    <!--휴대전화 번호 입력-->
                    <div class="btn_area">
                        <input type="submit" id="btnJoin" class="btn_type btn_primary" value="가입하기">
                    </div>
                </div>
            </div>
        </form:form>
    </div>
</body>
</html>