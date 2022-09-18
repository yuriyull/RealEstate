<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="spring.PropertyDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<style>
*{
    box-sizing: border-box ;
    margin : 0;
    padding: 0;
    text-decoration: none;
    
}
.body{
    line-height: 1.7;
    color: rgba(0, 0, 0, 0.6);
    font-weight: 400;
    font-size: 1rem;
    font-family: 'Nunito Sans', sans-serif;
    
}
.row{
    display: flex ;
    flex-wrap: wrap;
    width: 78%;
    margin: 0 auto;
}
.contatiner{
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}

.content_box{
    display: flex;
    line-height: 20px;
    box-shadow: 0 0 10px -2px rgba(0, 0, 0, 0.1);
    background: #fff;
    position: relative;
    height:auto;
    min-height: 1px;
    flex: 0 0 100%;
    width: 70%;
    margin-bottom:30px;
}
.property_img > a{

    margin-right: 25px;
}
.property_img > a > img{
	object-fit:cover;
	width:400px;
	height: auto;
	vertical-align: middle;
	border-style:none;
}
.box_sub{
	padding : 10px;
	width:100%;
}
.click{
    display: flex;
    font-size: 12px;
    color: gray;
}
.click i {
	padding:8px;
	padding-left: 0px;
}
.phone:hover{
	color:black;
}
.trash:hover{
	color:black;
}
.phone{
    margin-right: 30px;
    cursor: pointer;
}
.trash{
    cursor: pointer;
    color: gray;
}
</style>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Nunito+Sans:wght@300&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/6e0e070c43.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<script type="text/javascript">
function go(){
	location.href="./deleteMessage";
}
</script>
<body style="background-color:#f9f9f9;">
<jsp:include page="../navbar.jsp"></jsp:include>

<div class="container" style="background-color: #f9f9f9; padding-bottom:100px;">
    <div class="row" style=" width:70%;">
        <div class="title" style="width:100%; margin: 50px 0 10px 0;">
        	<h1 style="text-align:center;">문의 확인</h1>
   			<p style="text-align:center; margin-bottom: 40px;">[ ${authInfo.id} ]님</p>   
        </div>
        <c:if test="${!empty messages}">
        	<c:forEach var="message" items="${messages}" varStatus="status">
		        <div class="content_box">
		            <div class="property_img">
		            	<a href="/RealEstate/property_details?address=${message.address}">
		                	<img src="<spring:url value='/resources/images/${message.photo}'/>" >
		                </a>
		            </div>
		            <div class="box_sub">
		                <div class="text">
		                    <h5 style="line-height: 40px; ">${status.count}번 문의</h5>
		                    <h3 style="color:#669c19; font-weight: bold;" ><i class="fa-solid fa-location-dot" style="opacity: 0.7; margin-right:5px;"></i>매물 주소 : ${message.address }</h4>
		                    <p>문의자 이름 : ${message.m_name }</p>
		                    <p>문의자 연락처 : ${message.m_phone }</p>
		                    <p>문의 내용 : " ${message.message } "</p>
		                </div>
		                <div class="click">
		                    <div class="phone"><i class="fa-solid fa-phone" ></i>연락하기 </div>
		                    <a href="./deleteMessage?address=${message.address}" class="trash"><i class="fa-solid fa-trash-can"></i>문의 삭제 </a>
		                </div>
		            </div>
		        </div>
		    </c:forEach>
        </c:if>
    </div>
</div>
</body>
</html>