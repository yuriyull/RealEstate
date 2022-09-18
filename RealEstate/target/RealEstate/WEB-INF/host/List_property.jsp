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
.col-1, .col-2, .col-3, .col-4, .col-5, .col-6, .col-7, .col-8, .col-9, .col-10, .col-11, .col-12, .col, .col-auto, .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm, .col-sm-auto, .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12, .col-md, .col-md-auto, .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg, .col-lg-auto, .col-xl-1, .col-xl-2, .col-xl-3, .col-xl-4, .col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-10, .col-xl-11, .col-xl-12, .col-xl, .col-xl-auto{
    position: relative;
    width: 100%;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}
h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6
{
    margin-bottom: 0.5rem;
    font-family: inherit;
    font-weight: 500;
    line-height: 1.2;
    color: inherit;
}
h1, h2, h3, h4, h5, h6{
    margin-top:0;
}
h1{
    font-size: 2.5rem;
    display: block;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

.mt-4{
    margin-top: 1.5rem;
}
.py-1{
    padding-bottom: 0.25rem;
    padding-top: 0.25rem;
}
.container{
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
.align-items-center{
    align-items: center;
}
.row{
    display: flex ;
    flex-wrap: wrap;
    width: 78%;
    margin: 0 auto;
}
.col-lg-4{
    flex: 0 0 33.33333%;
    max-width: 33.33333%;
}
.text-white{
    color:#fff;
}
.mb-0{
    margin-bottom: 0;
}
.h2{
    font-size: 2rem;
}
a{
    transition: .3s all ease;
    text-decoration: none;
    background-color: transparent;
    cursor: pointer;
}
strong{
    font-weight: bolder;
}
.text-danger{
    color:#f23a2e;
}

.site-blocks-cover.overlay{
    position: relative ;

}
.site-blocks-cover, .site-blocks-cover .row{
    min-height: 600px;
    height: calc(100vh);
}
.justify-content-center{
    justify-content: center !important;
}
.site-blocks-cover{
    background-size: cover;
    background-repeat: no-repeat;
}
.contatiner{
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
.text-center{
    text-align: center;
}
.align-items-center{
    align-items: center;
}

.col-md-10{
    flex: 0 0 83.33333%;
    max-width: 83.33333%;
    flex: 0 0 83.33333%;
}
.site-blocks-cover .property-offer-type{
    letter-spacing: .2em;
    font-size: 12px;
    text-transform: uppercase;
    padding-top: 5px;
    padding-bottom: 5px;
}
.pl-3, .px-3{
    padding-left: 1rem !important;
}
.pr-3, .px-3{
    padding-right: 1rem !important;
}
.mb-3, .my-3{
    margin-bottom: 1rem !important;
}
.d-inline-block{
    display: inline-block !important;
}
.rounded{
    border-radius: 0.25rem !important;
}
.bg-success{
    background-color: #7cbd1e !important;
}
.owl-carousel.owl-drag .owl-item{
    user-select: none;
}
.site-blocks-cover h1{
    color: #fff;
    font-weight: normal;
    letter-spacing: .1em;
    text-transform: uppercase;
}
.mb-2, .my-2{
    margin-bottom: 0.5rem !important;
}
.site-blocks-cover p{
    color: #fff;
    font-size: 1.5rem;
    line-height: 1.5;
}
.mb-5, .my-5{
    margin-bottom: 3rem !important;
}
p{
    margin-top: 0;
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    margin-bottom: 1rem;
}
.text-success{
    color: #7cbd1e !important;
}
.font-weight-bold{
    font-weight: 700 !important;
}
.btn.btn-white.btn-outline-white{
    border-color: #fff;
    background: transparent;
    color: #fff;
}
.btn{
    cursor: pointer;
    position: relative;
    top: 0;
    display: inline-block;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    user-select: none;
    border: 1px solid transparent;
    line-height: 1.5;
}
.btn.btn-2{
    letter-spacing: .2em;
    text-transform: uppercase;
    font-size: 12px;
    font-weight: 700;
}
.pl-5, .px-5{
    padding-left: 3rem !important;
}
.pr-5, .px-5{
    padding-right: 3rem !important;
}
.pb-3, .py-3{
    padding-bottom: 1rem !important;
}

.pt-3, .py-3{
    padding-top: 1rem !important;
}
.rounded-0{
    border-radius: 0 !important;
}

.slide-one-item.home-slider .owl-nav{
    position: absolute !important;
    top: 50% !important;
    bottom: auto !important;
    width: 100%;
}
.block-13 .owl-nav, .slide-one-item .owl-nav{
    left: 50%;
    transform: translateX(-50%);
}
.slide-one-item.home-slider .owl-prev, .slide-one-item.home-slider .owl-next{
    color: #fff;
    position: absolute !important;
    top: 50%;
    padding: 0px;
    height: 50px;
    width: 50px;
    border-radius: 0%;
    transform: translateY(-50%);
    background: rgba(0, 0, 0, 0.2);
    transition: .3s all ease-in-out;
    line-height: 0;
    text-align: center;
}
.slide-one-item.home-slider .owl-prev{
    left: 10px !important;
}
.owl-carousel .owl-dot, .owl-carousel .owl-nav .owl-next, .owl-carousel .owl-nav .owl-prev{
    cursor: pointer;
}
.slide-one-item.home-slider .owl-prev > span, .slide-one-item.home-slider .owl-next > span{
    position: absolute;
    line-height: 0;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}

.site-section.site-section-sm{
    padding:4em 0;
}
.pb-0, .py-0{
    padding-bottom: 0 !important;
}
.form-search{
    background: #364e68;
    position: relative;
    z-index: 1;
    padding: 3rem 2rem;
   
}
.col-md-12{
    flex: 0 0 100%;
    max-width: 100%;
}
form{
    display: block;
}
.align-items-end{
    align-items: flex-end !important;
}
.col-md-3{
    flex: 0 0 25%;
    max-width: 25%;
}
.form-search label{
    text-transform: uppercase;
    font-size: 13px;
    letter-spacing: .1em;
    color: rgba(255, 255, 255, 0.3);
}
label{
    display: inline-block;
    margin-bottom: 0.5rem;
}
.select-wrap{
    position: relative;
}
.select-wrap .icon{
    display: block;
    position: absolute;
    top: 50%;
    right: 10px;
    line-height: 0;
    font-size: 26px;
    transform: translateY(-50%);
}
.form-search .form-control{
    border: none;
}
.select-wrap select{
    appearance: none;
}
.form-control{
    height: 47px;
}
.d-block{
    display: block !important;
}
.rounded-0{
    border-radius: 0 !important;
}
.form-control{
    width: 100%;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
}
button, select{
    text-transform: none;
}
input, button, select, optgroup, textarea{
    margin: 0;
    font-family: inherit;
}
select:not{
    overflow: visible !important;
}
option {
    font-weight: normal;
    display: block;
    white-space: nowrap;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}
.form-search .btn[type="submit"]{
    height: 47px;
}
.btn-block{
    display: block;
}
.btn-success{
    background-color: #7cbd1e;
    border-color: #7cbd1e;
}
.btn{
    font-weight: 400;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    user-select: none;
    border: 1px solid transparent;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    line-height: 1.5;
}
button, input{
    overflow: visible;
}
input[type="submit" i] {
    align-items: flex-start;
}
.pt-3, .py-3 {
    padding-top: 1rem !important;
}
.mr-auto, .mx-auto{
    margin-right: auto !important;
}
.view-options .icon-view.active{
    color: #000;
}
.view-options .icon-view{
    font-size: 20px;
}
.icon-view_list:before{
    content: "\e8ef";
}
.d-flex{
    display: flex !important;
}
.view-options a.active{
    color: #000;
}
.view-options a{
    font-size: 14px;
}
.border-right{
    border-right: 1px solid #dee2e6 !important;
}
.select-wrap{
    position: relative;
}
.select-wrap .icon{
    display: block;
    position: absolute;
    top: 50%;
    right: 10px;
    line-height: 0;
    font-size: 26px;
    transform: translateY(-50%);
}
.icon-arrow_drop_down:before{
    content: "\e5c5";
}
.select-wrap select{
    appearance: none;
}
.form-control-sm{
    height: auto !important;
    padding: 0.25rem 0.5rem;
    font-size: 0.875rem;
    padding-top: 5px !important;
    padding-bottom: 5px !important;
    border-radius: 0.2rem;
}
option {
    font-weight: normal;
    display: block;
    white-space: nowrap;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}
.icon-arrow_drop_down:before{
    content: "\e5c5";
}
.icon-view_module:before{
    content: "\e8f0";
}
.d-md-flex{
    display: flex !important;
}
*, *::before, *::after{
    box-sizing: border-box;
}
.site-section.site-section-sm{
    padding: 4em 0;
}
.bg-light{
    background: #f9f9f9 !important;
}
.mb-5, .my-5{
    margin-bottom: 3rem !important;
}
.mb-4, .my-4{
    margin-bottom: 1.5rem !important;
}
.property-entry{
    box-shadow: 0 0 10px -2px rgba(0, 0, 0, 0.1);
    background: #fff;
}
.h-100{
    height: 100% !important;
}
.property-entry .property-thumbnail{
    overflow: hidden;
    position: relative;
    display: block;
}
.property-entry .offer-type-wrap{
    position: absolute;
    top: 10px;
    left: 10px;
    z-index: 8;
}
.property-entry .property-thumbnail .offer-type{
    display: block;
    margin-bottom: 5px;
    padding: 1px 7px;
    color: #fff;
    text-transform: uppercase;
    letter-spacing: .2em;
    font-size: 9px;
    border-radius: 4px;
}
.전세 {
   background-color: blue;
}
.매매 {
   background-color : red;
}
.월세 {
   backgroud-color : red;
}
.bg-success{
    background-color: #7cbd1e !important;
}
.property-entry .property-thumbnail img{
    transition: .3s all ease;
    transform: scale(1);
}
.property-entry .property-body{
    position: relative;
}
.p-4{
    padding: 1.5rem !important;
}
.property-entry .property-favorite{
    position: absolute;
    border-radius: 50%;
    top: -60px;
    right: 10px;
    width: 50px;
    height: 50px;
    line-height: 50px;
    background: #fff;
    text-align: center;
}
.property-entry .property-favorite span{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
[class^="icon-"], [class*=" icon-"]{
    font-family: 'icomoon' !important;
    font-style: normal;
    font-weight: normal;
    font-variant: normal;
    text-transform: none;
    line-height: 1;
}
.icon-heart-o:before{
    content: "\f08a";
}
.property-entry .property-title{
    font-size: 1.2rem;
}
.property-entry .property-title a{
    color: #000;
}
.property-entry .property-location{
    font-size: .9rem;
}
.mb-3, .my-3{
    margin-bottom: 1rem !important;
}
.d-block{
    display: block !important;
}
.property-entry .property-location .property-icon{
    color: rgba(0, 0, 0, 0.3);
}
.property-entry .property-location{
    font-size: .9rem;
}
.icon-room:before{
    content: "\e8b4";
}
.property-entry .property-price{
    font-size: 1.3rem;
}
.text-success{
    color: #7cbd1e !important;
}
.mb-3, .my-3{
    margin-bottom: 1rem !important;
}
b, strong{
    font-weight: bolder;
}
.property-entry .property-specs-wrap{
    list-style: none;
    padding: 0;
    margin: 0;
}
.mb-lg-0, .my-lg-0{
    margin-bottom: 0 !important;
}
.property-entry .property-specs-wrap li{
    display: inline-block;
    margin-right: 10px;
    margin-bottom: 10px;
}
.property-entry .property-specs{
    display: block;
    text-transform: uppercase;
    font-size: 10px;
    letter-spacing: .1em;
}
.property-entry .property-specs-number{
    font-size: 1.2rem;
    color: #000;
}
.bg-info{
    background-color: #53cde2 !important;
}
.img-fluid{
    max-width: 100%;
    height: auto;
}
img{
    vertical-align: middle;
    border-style: none;
}
.site-pagination a.active{
    border: 1px solid transparent;
    background: #7cbd1e;
    color: #fff;
}
.site-pagination a{
    display: inline-block;
    width: 50px;
    border-radius: 50%;
    height: 50px;
    line-height: 50px;
    background: #fff;
    color: #333333;
    border: 1px solid #e6e6e6;
}
.col-lg-4{
    flex: 0 0 33.33333%;
    max-width: 33.33333%;
}
.property-favorite:hover{
	background-color: gray;
}
.fa-trash-can{
color: black; font-size: 25px; display: inline-block; padding-top: 12px;
}
.property-favorite:hover .fa-trash-can{
	color: white;
}
</style>
<script src="https://kit.fontawesome.com/6e0e070c43.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>

<body>
<jsp:include page="../navbar.jsp"></jsp:include>
 <div class="site-section site-section-sm bg-light">
  <div class="container">
   <h1 style="text-align:center; margin-bottom: 40px;">내 매물 조회</h1>
    <div class="row mb-5">
      <c:if test="${!empty propertyList }">
      <c:forEach var="propertyList" items="${propertyList}">
	      <div class="col-md-6 col-lg-4 mb-4">
	        <div class="property-entry h-100">
	          <a href="/RealEstate/property_details?address=${propertyList.address}" class="property-thumbnail">
	            <div class="offer-type-wrap">
	              <span class="offer-type bg-danger ${propertyList.trading_types}">${propertyList.trading_types}</span>
	            </div>
	            <img src="<spring:url value='/resources/images/${propertyList.photo}'/>" alt="Image" class="img-fluid">
	          </a>
	          <div class="p-4 property-body">
	            <a href="#" class="property-favorite"><i class="fa-solid fa-trash-can"></i></a>
	            <h2 class="property-title"><a href="property-details.html">${propertyList.location}</a></h2>
	            <span class="property-location d-block mb-3"><i class="fa-solid fa-location-dot" style="opacity: 0.7;"></i>${propertyList.address}</span>
	            <strong class="property-price text-primary mb-3 d-block text-success">${propertyList.price}</strong>
	            <ul class="property-specs-wrap mb-3 mb-lg-0">
	              <li>
	                <span class="property-specs">면적</span>
	                <span class="property-specs-number" style="margin-right:13px;">${propertyList.size}</span>
	              </li>
	              <li>
	                <span class="property-specs">매물유형</span>
	                <span class="property-specs-number">${propertyList.property_types}</span>
	                
	              </li>
	            </ul>
	          </div>
	        </div>
	      </div>
		</c:forEach>
		</c:if>      			
    </div>
  </div>
</div>
</body>
</html>