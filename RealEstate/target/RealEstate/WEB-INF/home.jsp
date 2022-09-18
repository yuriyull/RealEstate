<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<head>
<title>home</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Nunito+Sans:wght@300&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/6e0e070c43.js" crossorigin="anonymous"></script>
</head>

<style>
:root {
    --blue: #1f3c88;
    --indigo: #6610f2;
    --purple: #7971ea;
    --pink: #e83e8c;
    --red: #f23a2e;
    --orange: #fd7e14;
    --yellow: #eec60a;
    --green: #7cbd1e;
    --teal: #20c997;
    --cyan: #53cde2;
    --white: #fff;
    --gray: #6c757d;
    --gray-dark: #343a40;
    --primary: #1f3c88;
    --secondary: #6c757d;
    --success: #7cbd1e;
    --info: #53cde2;
    --warning: #eec60a;
    --danger: #f23a2e;
    --light: #f8f9fa;
    --dark: #343a40;
}
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

/*슬라이드*/
.site-navbar {
    margin-bottom: 0px;
    width: 100%;
    border-bottom: none;
    position: absolute;
  
}
.mt-4{
    margin-top: 1.5rem;
}
.py-1{
    padding-bottom: 0.25rem;
    padding-top: 0.25rem;
}
.contatiner{
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

/*검색 시작*/
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
	background-color : green;
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
.site-pagination span{
    display: inline-block;
    width: 20px;
}
.site-section{
    padding: 7em 0;
}
.justify-content-center{
    justify-content: center !important;
}
.site-section-title h2{
    text-transform: uppercase;
    color: #000;
    font-weight: 700;
    font-size: 2rem;
    letter-spacing: .1em;
}
.col-lg-4{
    flex: 0 0 33.33333%;
    max-width: 33.33333%;
}
.service{
    display: block;
}
.service .icon{
    font-size: 60px;
    color: #1f3c88;
}
.flaticon-house:before{
    content: "\f105";
}
.service .service-heading{
    color: #000;
    font-size: 1.2rem;
    margin-bottom: 1rem;
}
.flaticon-sold:before{
    content: "\f103";
}
.flaticon-camera:before{
    content: "\f109";
}
.service p{
    color: rgba(0, 0, 0, 0.6);
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.col-md-7{
    flex: 0 0 58.33333%;
    max-width: 58.33333%;
}
.site-section{
    padding: 7em 0;
}
.mb-5, .my-5{
    margin-bottom: 3rem !important;
}
.justify-content-center{
    justify-content: center !important;
}
.mb-lg-5, .my-lg-5{
    margin-bottom: 3rem !important;
}
.mb-4, .my-4{
    margin-bottom: 1.5rem !important;
}
.img-fluid{
    max-width: 100%;
    height: auto;
}
.text-black{
    color: #000 !important;
}
.icon-facebook:before{
    content: "\f09a";
}
.icon-twitter:before{
    content: "\f099";
}
.icon-linkedin:before{
    content: "\f0e1";
}
.site-footer{
    margin: 0;
    width: 100%;
    background: #333333;
}
article, aside, figcaption, figure, footer, header, hgroup, main, nav, section{
    display: block;
}
.col-lg-4{
    flex: 0 0 33.33333%;
    max-width: 33.33333%;
}
.mb-5, .my-5{
    margin-bottom: 3rem !important;
}
.site-footer .footer-heading{
    font-size: 14px;
    text-transform: uppercase;
    letter-spacing: .1em;
    color: #fff;
    position: relative;
    padding-bottom: 15px;
}
.mb-4, .my-4{
    margin-bottom: 1.5rem !important;
}
h1, h2, h3, h4, h5, h6{
    margin-top: 0;
}
.site-footer .footer-heading:before{
    content: "";
    background: #fff;
    width: 40px;
    height: 2px;
    position: absolute;
    bottom: 0;
}
.site-footer p{
    color: #737373;
}
.site-footer .footer-heading{
    font-size: 14px;
    text-transform: uppercase;
    letter-spacing: .1em;
    color: #fff;
    position: relative;
    padding-bottom: 15px;
}
.list-unstyled{
    padding-left: 0;
    list-style: none;
}
ol, ul, dl{
    margin-top: 0;
    margin-bottom: 1rem;
}
.site-footer ul li{
    margin-Bottom: '10px';
}
.site-footer a{
    color: #999999;
}
.pl-0, .px-0{
    padding-left: 0 !important;
}
.icon-facebook:before{
    content: "\f09a";
}
.icon-twitter:before{
    content: "\f099";
}
.icon-instagram:before{
    content: "\f16d";
}
.icon-linkedin:before{
    content: "\f0e1";
}
.pt-5, .py-5{
    padding-top: 3rem !important;
}
.mt-5, .my-5{
    margin-top: 3rem !important;
}

	/* 브라우저 마진과 패딩 리셋 */
	* {margin:0;padding:0;}

	/* INPUT 가리기 */
	.section input[id*="slide"] {display:none;}

	/* 슬라이드 영역 - max-width 크기를 조절해주면 됩니다*/
	.section .slidewrap {margin:0 auto;overflow:hidden;}
	.section .slidelist {white-space:nowrap;}
	.section .slidelist > li {display:inline-block;vertical-align:middle;width:100%;transition:all .5s;}


	/* 좌우로 넘기는 LABEL버튼에 대한 스타일 */
	.section .slidelist label {position:absolute;top:50%;transform:translateY(-50%);padding:50px;cursor:pointer;}
	.section .slidelist .left {opacity: 0.6; ;left:30px; background:url('<spring:url value='/resources/images/left.png'/>') center center / 100% no-repeat;}
	.section .slidelist .right {opacity: 0.6; right:30px;background:url('<spring:url value='/resources/images/right.png'/>') center center / 100% no-repeat;}

	/* INPUT 체크되면 변화값이 li까지 전달되는 스타일 */
	.section input[id="slide01"]:checked ~ .slidewrap .slidelist > li {transform:translateX(0%);}
	.section input[id="slide02"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-100%);}
	.section input[id="slide03"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-200%);}

.slide_content > .slide_text{
    z-index: 100;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    text-align: center;
}
.slide_content > img
{
    filter: brightness(40%); 
    opacity: 0.9;
}
body {
    margin: 0;
    line-height: 1.7;
    color: rgba(0, 0, 0, 0.6);
    font-weight: 400;
    font-size: 1rem;
    font-family: 'Nunito Sans', sans-serif;
    text-align: left;
    background-color: #fff;
    display: block;
}
* { box-sizing: border-box; }

div { display: block; }

.col-1, .col-2, .col-3, .col-4, .col-5, .col-6, .col-7, .col-8, .col-9, .col-10, .col-11, .col-12, .col, .col-auto, .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm, .col-sm-auto, .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12, .col-md, .col-md-auto, .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg, .col-lg-auto, .col-xl-1, .col-xl-2, .col-xl-3, .col-xl-4, .col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-10, .col-xl-11, .col-xl-12, .col-xl, .col-xl-auto {
    position: relative;
    width: 100%;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}

h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
    margin-bottom: 0.5rem;
    font-family: inherit;
    font-weight: 500;
    line-height: 1.2;
    color: inherit;
}

h1, h2, h3, h4, h5, h6 {
    margin-top: 0;
    margin-bottom: 0.5rem;
}

h1 {
    display: block;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
a {
    text-decoration: none;
    background-color: transparent;
}

article, aside, figcaption, figure, footer, header, hgroup, main, nav, section {
    display: block;
}

ol, ul, dl {
    margin-top: 0;
    margin-bottom: 1rem;
}

ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
ul {
    list-style-type: disc;
}
li {
    display: list-item;
}

.site-navbar .site-navigation .site-menu .has-children:hover, .site-navbar .site-navigation .site-menu .has-children:focus, .site-navbar .site-navigation .site-menu .has-children:active {
    cursor: pointer;
}

/* 네비 바 시작 */
.site-wrap {
    position: relative;
}
.site-navbar {
    margin-bottom: 0px;
    width: 100%;
    border-bottom: none;
    position: absolute;
    z-index: 99;
}
.mt-4, .my-4 {
    margin-top: 1.5rem !important;
}
.pb-1, .py-1 {
    padding-bottom: 0.25rem !important;
    padding-top: 0.25rem !important;
}
.container {
    width: 100%;
    margin-right: auto;
    margin-left: auto;
}
.align-items-center {
    align-items: center !important;
}

.col-lg-4 {
    flex: 0 0 33.33333%;
    max-width: 33.33333%;
}
.mb-0, .my-0 {
    margin-bottom: 0 !important;
}
h1, .h1 {
    font-size: 2.5rem;
}
.text-white {
    color: #fff !important;
}
.mb-0, .my-0 {
    margin-bottom: 0 !important;
}
h2, .h2 {
    font-size: 2rem;
}
b, strong {
    font-weight: bolder;
}
.text-danger {
    color: #f23a2e !important;
}
.col-lg-8 {
    flex: 0 0 66.66667%;
    max-width: 66.66667%;
}
.text-md-right {
    text-align: right !important;
}
.site-navbar .site-navigation .site-menu {
    margin-bottom: 0;
    margin-left: 0;
    padding-left: 0;
}
.d-lg-block {
    display: block !important;
}
.site-navbar .site-navigation .site-menu > li {
    display: inline-block;
    padding: 10px 5px;
}
.site-navbar .site-navigation .site-menu .active > a {
    color: #fff;
}
.site-navbar .site-navigation .site-menu > li > a {
    padding: 10px 10px;
    letter-spacing: .05em;
    color: rgba(255, 255, 255, 0.6);
    text-decoration: none !important;
}
.site-navbar .site-navigation .site-menu a {
    text-decoration: none !important;
    display: inline-block;
}
.site-navbar .site-navigation .site-menu > li > a:hover {
    color: #fff;
}
.site-navbar .site-navigation .site-menu .has-children {
    position: relative;
}
.site-navbar .site-navigation .site-menu .has-children > a {
    position: relative;
    padding-right: 20px;
}
.site-navbar .site-navigation .site-menu .has-children .dropdown.arrow-top {
    position: absolute;
}
.site-navbar .site-navigation .site-menu .has-children .dropdown {
    visibility: hidden;
    opacity: 0;
    top: 100%;
    position: absolute;
    text-align: left;
    -webkit-box-shadow: 0 2px 10px -2px rgb(0 0 0 / 25%);
    box-shadow: 0 2px 10px -2px rgb(0 0 0 / 25%);
    border-left: 1px solid #edf0f5;
    border-right: 1px solid #edf0f5;
    border-bottom: 1px solid #edf0f5;
    padding: 10px 0;
    margin-left: 0px;
    background: #fff;
    -webkit-transition: 0.2s 0s;
    -o-transition: 0.2s 0s;
    transition: 0.2s 0s;
}
.dropup, .dropright, .dropdown, .dropleft {
    position: relative;
}
ol ol, ul ul, ol ul, ul ol {
    margin-bottom: 0;
}
ul ul {
    list-style-type: circle;
    margin-block-start: 0px;
    margin-block-end: 0px;
}
.site-navbar .site-navigation .site-menu .has-children .dropdown > li {
    list-style: none;
    padding: 0;
    margin: 0;
    min-width: 200px;
}
.site-navbar .site-navigation .site-menu .has-children .dropdown > li > a {
    padding: 5px 20px;
    display: block;
}
.site-navbar .site-navigation .site-menu .has-children .dropdown > li > a:hover {
    color: #1f3c88;
    background-color: #343a401c;
}
.site-navbar .site-navigation .site-menu .has-children .dropdown a {
    text-transform: none;
    letter-spacing: normal;
    -webkit-transition: 0s all;
    -o-transition: 0s all;
    transition: 0s all;
    color: #343a40;
}
.site-navbar .site-navigation .site-menu a {
    text-decoration: none !important;
    display: inline-block;
}
.site-navbar .site-navigation .site-menu .has-children:hover .dropdown{
    visibility: visible;
    opacity: 1;
    z-index: 100;

}
html {
  scroll-behavior: smooth;
}
/* 네비 바 끝 */
#floatdiv {
        text-align: center;
        position:fixed;
        z-index: 10;
        width:50px; /* 이미지 가로폭 조절*/
        overflow:hidden;
        right:30%;
        top:85%; /* 이미지 높이 조절 */
        background-color: transparent;
        margin-right: -530px; /* 좌우측 여백 조절 */
        padding:0;
    }
    
    #floatdiv li  { margin-bottom: 2px; text-align: center; }
    
    #floatdiv a   { color: #5D5D5D; border: 0; text-decoration: none; display: block; line-height: 20px;}
    
    #floatdiv svg:hover
    {
        background-color: rgba(185, 116, 219, 0.209);
    }
    
    #floatdiv .menu, #floatdiv .last    { margin-bottom: 0px; }
</style>

<body>
<div id="floatdiv">
    <div class="float">
        <a href='#home' >
        <b style="display: inline-block; margin-bottom:-2px;">^</b><br>   
        <p>위로<br>이동</p></a>
    </div>`
</div>
<a name="home"></a>
  <div class="site-wrap">
    <div class="site-navbar mt-4">
        <div class="container py-1">
          <div class="row align-items-center">
            <div class="col-8 col-md-8 col-lg-4">
              <h1 class="mb-0"><a href="/RealEstate/home" class="text-white h2 mb-0"><strong>Homeland<span class="text-danger">.</span></strong></a></h1>
            	<p style="font-weight: solid; font-size:small; color:gray; margin-top:-7px;">창원의 집을 찾다</p>
            </div>
            <div class="col-4 col-md-4 col-lg-8">
              <nav class="site-navigation text-right text-md-right" role="navigation">
                <ul class="site-menu js-clone-nav d-none d-lg-block">
                  <li class="active" style="margin-right:5px;">
                    <a href="/RealEstate/home">Home</a>
                  </li>
                  <li><a href="#search" data-direction="search">매물 검색</a></li>
                    
                  <li><a href="/RealEstate/map">지도로 검색</a></li>
                  <li><a href="#introduce" data-direction="introduce" data-direction="introduce">중개사 소개</a></li>
                  <li class="has-children">
                  
                  <c:if test="${empty authInfo }">
                    <a href="/RealEstate/login">매물 등록</a>
                    <ul class="dropdown arrow-top" style="padding-top:20px;">
                      <li><a href="/RealEstate/login">로그인/회원가입</a></li>
                      <li><a href="/RealEstate/login">매물 등록</a></li>
                      <li><a href="/RealEstate/login">내 매물 조회</a></li>
                    </ul>
                   </c:if>
                   <c:if test="${!empty authInfo }">
                    <a href="/RealEstate/host/Add_property">매물 등록</a>
                    <ul class="dropdown arrow-top" style="padding-top:20px;">
                      <li><a href="/RealEstate/host/Add_property">매물 등록</a></li>
                      <li><a href="/RealEstate/host/List_property">내 매물 조회</a></li>
                      <li><a href="/RealEstate/logout">로그아웃</a></li> 
                    </ul>
                   </c:if>
                  </li>
                </ul>
              </nav>
            </div>
           

          </div>
        </div>
      </div>
    </div>
    <!--슬라이드 화면 시작-->

    <div class="section" style="margin-top: -18px">
      <input type="radio" name="slide" id="slide01" checked>
      <input type="radio" name="slide" id="slide02">
      <input type="radio" name="slide" id="slide03">
  
      <div class="slidewrap">
        <ul class="slidelist">
          <li>
                <div class="slide_content" style="display: inline-block; position: relative; ">
                  <img src="<spring:url value='/resources/images/hero_bg_1.jpg'/>" style="width: 100%; z-index: 1;">
                  <div class="slide_text" style=" z-index: 100;
                  position: absolute;
                  top: 50%;
                  left: 50%;
                  transform: translate(-50%,-50%);
                  text-align: center;">
                    <span class="d-inline-block bg-success text-white px-3 mb-3 property-offer-type rounded" style=" padding-top: 2px; padding-bottom: 2px;">For Rent</span>
                    <h1 style="font-weight: bold; font-size: 70px; color: rgba(255, 255, 255, 0.822);">871 Crenshaw Blvd</h1>
                    <p class=""><strong class="h2 text-success font-weight-bold">$2,250,500</strong></p>
                    <p><a href="#" class="btn btn-white btn-outline-white py-3 px-5 rounded-0 btn-2">See Details</a></p>
                  </div>
                </div>
                <label for="slide03" class="left"></label>
              <label for="slide02" class="right"></label>
            
          </li>
          <li>
             
              <div class="slide_content" style="display: inline-block; position: relative; ">
                <img src="<spring:url value='/resources/images/hero_bg_2.jpg'/>" style="width: 100%; z-index: 1;">
                <div class="slide_text">
                  <span class="d-inline-block  text-white px-3 mb-3 property-offer-type rounded" style="background-color: rgb(161, 3, 3); padding-top: 2px; padding-bottom: 2px;">For Sale</span>
                  <h1 style="font-weight: bold; font-size: 70px; color: rgba(255, 255, 255, 0.822);">871 Crenshaw Blvd</h1>
                   <p class=""><strong class="h2 text-success font-weight-bold">$2,250,500</strong></p>
                   <p><a href="#" class="btn btn-white btn-outline-white py-3 px-5 rounded-0 btn-2">See Details</a></p>
                </div>
              </div>
              <label for="slide01" class="left"></label>
              <label for="slide03" class="right"></label>
          </li>
          <li>
              
              <div class="slide_content" style="display: inline-block; position: relative;">
                <img src="<spring:url value='/resources/images/hero_bg_3.jpg'/>" style="width: 100%; z-index: 1;">
                <div class="slide_text" >
                  <span class="d-inline-block bg-success text-white px-3 mb-3 property-offer-type rounded" style=" padding-top: 2px; padding-bottom: 2px;">For Rent</span>
                  <h1 style="font-weight: bold; font-size: 70px; color: rgba(255, 255, 255, 0.822);">871 Crenshaw Blvd</h1>
                   <p class=""><strong class="h2 text-success font-weight-bold">$2,250,500</strong></p>
                   <p><a href="#" class="btn btn-white btn-outline-white py-3 px-5 rounded-0 btn-2">See Details</a></p>
                </div>
              </div>
              <label for="slide02" class="left"></label>
              <label for="slide01" class="right"></label>
          </li>
        </ul>
      </div>
    </div>
    <!--슬라이드 화면 끝-->

      <!--검색/카테고리 선택 시작-->
      <a name="search"></a>
      <div class="site-section site-section-sm pb-0">
        <div class="container" style="width:100%; margin: 0 auto;"> 
          <div class="row ">
            
            <form action="Search" method="post" class="form-search col-md-12" style="margin-top: -100px;">
              <div class="align-items-center" 
              style="text-align: center; margin-bottom:35px; margin-top:-10px; color:white; font-size:35px; font-weight: bold;">
              창원의 어떤 집을 찾고 계신가요?</div>
              <div class="row  align-items-end">
                
                <div class="col-md-3">
                  <label for="list-types">거래유형</label>
                  <div class="select-wrap">
                    <i class="fa-solid fa-angle-down" style="height: 10px; width: 10px; position: absolute; right: 5%; top:30%;"></i>
                    <select name="trading-types" id="trading-types" class="form-control d-block rounded-0">
                      <option value="전체">전체</option>
                      <option value="전세">전세</option>
                      <option value="월세">월세</option>
                      <option value="매매">매매</option>
                    </select>
                  </div>
                </div>

                <div class="col-md-3">
                  <label for="offer-types">매물종류</label>
                  <div class="select-wrap">
                    <i class="fa-solid fa-angle-down" style="height: 10px; width: 10px; position: absolute; right: 5%; top:30%;"></i>
                    <select name="building-types" id="building-types" class="form-control d-block rounded-0">
                      <option value="전체">전체</option>
                      <option value="아파트/주상복합">아파트/주상복합</option>
                      <option value="주택">주택</option>
                      <option value="원룸/투룸">원룸/투룸</option>
                      <option value="상가점포">상가점포</option>
                    </select>
                  </div>
                </div>
                <div class="col-md-3">
                  <label for="select-city">위치</label>
                  <div class="select-wrap">
                    <i class="fa-solid fa-angle-down" style="height: 10px; width: 10px; position: absolute; right: 5%; top:30%;"></i>
                    <select name="select-city" id="select-city" class="form-control d-block rounded-0">
                      <option value="전체">전체</option>
                      <option value="성산구">창원시 성산구</option>
                      <option value="의창구">창원시 의창구</option>
                      <option value="합포구">창원시 합포구</option>
                      <option value="회원구">창원시 회원구</option>
                      <option value="진해구">창원시 진해구</option>
                    </select>
                  </div>
                </div>
                <div class="col-md-3">
                  <input type="submit" class="btn btn-success text-white btn-block rounded-0" value="Search" style="width: 100%;">
                </div>
              </div>
            </form>
          </div>  

          <div class="row">
            <div class="col-md-12">
              <div class="view-options bg-white py-3 px-3 d-md-flex align-items-center">
                <div class="mr-auto">
                  <a href="#" class="icon-view view-module active"><i class="fa-solid fa-table-cells" style="color:#333333c5;"></i></a>
                  <a href="#" class="icon-view view-list"></a>
                  
                </div>
                <div class="ml-auto d-flex align-items-center">
                  <div>
                    <a href="#" class="view-list px-3 border-right active">All</a>
                    <a href="#" class="view-list px-3 border-right">Rent</a>
                    <a href="#" class="view-list px-3">Sale</a>
                  </div>
  
                  <div class="select-wrap">
                    <i class="fa-solid fa-angle-down" style="height: 10px; width: 10px; position: absolute; right: 5%; top:30%;"></i>
                    <select class="form-control form-control-sm d-block rounded-0">
                      <option value="">Sort by</option>
                      <option value="">Price Ascending</option>
                      <option value="">Price Descending</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <!--검색/카테고리 선택 끝-->

        <!--검색 결과 출력 시작-->
        <div class="site-section site-section-sm bg-light">
            <div class="container">
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
                      <a href="#" class="property-favorite"><i class="fa-solid fa-heart" style="color: black; font-size: 25px; display: inline-block; padding-top: 12px;"></i></a>
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

              <div class="row">
                <div class="col-md-12 text-center">
                  <div class="site-pagination">
                  <c:set var="pageNum" value="${pageNum }" />
                  <c:forEach var="idx" begin="1" end="${total_page}">
                  	<c:choose>
                  		<c:when test="${pageNum==idx}">
	                  		<a href="./Search?pageNum=${idx}" class="active">${idx}</a>
	                  	</c:when>
	                  	<c:otherwise>
	                  		<a href="./Search?pageNum=${idx}">${idx}</a>
	             	  	</c:otherwise>
             	  	</c:choose>
                  </c:forEach>
                  <span>...</span>
					<a href="./Search?pageNum=${total_page}">${total_page}</a>
                  </div>
                </div>  
              </div>
              
            </div>
          </div>
        <!--검색 결과 출력 끝-->

        <!--왜 우리를 선택해야하는가 시작-->
        <div class="site-section">
            <div class="container">
              <div class="row justify-content-center">
                <div class="col-md-7 text-center">
                  <div class="site-section-title">
                    <h2>Why Choose Us?</h2>
                  </div>
                  <p style=" color: rgba(0, 0, 0, 0.6);">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis maiores quisquam saepe architecto error corporis aliquam. Cum ipsam a consectetur aut sunt sint animi, pariatur corporis, eaque, deleniti cupiditate officia.</p>
                </div>
              </div>
      
              <div class="row">
                <div class="col-md-6 col-lg-4">
                  <a href="#" class="service text-center">
                    <i class="fa-solid fa-house-chimney-user" style="color: black; font-size: 100px; display: inline-block; padding-top: 50px; padding-bottom: 50px;"></i>
                    <h2 class="service-heading">Research Subburbs</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt iure qui natus perspiciatis ex odio molestia.</p>
                    <p><span class="read-more">Read More</span></p>
                  </a>
                </div>
                <div class="col-md-6 col-lg-4">
                  <a href="#" class="service text-center">
                    <i class="fa-solid fa-handshake-simple" style="color: black; font-size: 100px; display: inline-block; padding-top: 50px; padding-bottom: 50px;"></i>
                    <h2 class="service-heading">Sold Houses</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt iure qui natus perspiciatis ex odio molestia.</p>
                    <p><span class="read-more">Read More</span></p>
                  </a>
                </div>
                <div class="col-md-6 col-lg-4">
                  <a href="#" class="service text-center">
                    <i class="fa-solid fa-user-clock" style="color: black; font-size: 100px; display: inline-block; padding-top: 50px; padding-bottom: 50px;"></i>
                    <h2 class="service-heading">Security Priority</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt iure qui natus perspiciatis ex odio molestia.</p>
                    <p><span class="read-more">Read More</span></p>
                  </a>
                </div>
              </div>
            </div>
          </div>
       <!--왜 우리를 선택해야하는가 끝-->

       <!--공인중개사 소개 시작-->
       <a name="introduce"></a>
       <div class="site-section">
        <div class="container">
          <div class="row mb-5 justify-content-center">
            <div class="col-md-7">
              <div class="site-section-title text-center">
                <h2>Our Agents</h2>
                <p style="color: rgba(0, 0, 0, 0.6);">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero magnam officiis ipsa eum pariatur labore fugit amet eaque iure vitae, repellendus laborum in modi reiciendis quis! Optio minima quibusdam, laboriosam.</p>
              </div>
            </div>
          </div>
          <div class="row">
              <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
                <div class="team-member">
    
                  <img src="<spring:url value='/resources/images/person_1.jpg'/>" alt="Image" class="img-fluid rounded mb-4">
    
                  <div class="text">
    
                    <h2 class="mb-2 font-weight-light text-black h4">Megan Smith</h2>
                    <span class="d-block mb-3 text-white-opacity-05">Real Estate Agent</span>
                    <p style="color: rgba(0, 0, 0, 0.6);">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi dolorem totam non quis facere blanditiis praesentium est. Totam atque corporis nisi, veniam non. Tempore cupiditate, vitae minus obcaecati provident beatae!</p>
                    <p>
                      <a href="#" class="text-black p-2"><i class="fa-brands fa-facebook-f" style="margin-right: 5px;"></i></a>
                      <a href="#" class="text-black p-2"><i class="fa-brands fa-twitter" style="margin-right: 5px;"></i></a>
                      <a href="#" class="text-black p-2"><i class="fa-brands fa-instagram"></i></a>
                    </p>
                  </div>
    
                </div>
              </div>
    
              <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
                <div class="team-member">
    
                  <img src="<spring:url value='/resources/images/person_4.jpg'/>" alt="Image" class="img-fluid rounded mb-4">
    
                  <div class="text">
    
                    <h2 class="mb-2 font-weight-light text-black h4">Brooke Cagle</h2>
                    <span class="d-block mb-3 text-white-opacity-05">Real Estate Agent</span>
                    <p style="color: rgba(0, 0, 0, 0.6);">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, cumque vitae voluptates culpa earum similique corrupti itaque veniam doloribus amet perspiciatis recusandae sequi nihil tenetur ad, modi quos id magni!</p>
                    <p>
                      <a href="#" class="text-black p-2"><i class="fa-brands fa-facebook-f" style="margin-right: 5px;"></i></a>
                      <a href="#" class="text-black p-2"><i class="fa-brands fa-twitter" style="margin-right: 5px;"></i></a>
                      <a href="#" class="text-black p-2"><i class="fa-brands fa-instagram"></i></a>
                    </p>
                  </div>
    
                </div>
              </div>
    
              <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
                <div class="team-member">
    
                  <img src="<spring:url value='/resources/images/person_3.jpg'/>" alt="Image" class="img-fluid rounded mb-4">
    
                  <div class="text">
    
                    <h2 class="mb-2 font-weight-light text-black h4">Philip Martin</h2>
                    <span class="d-block mb-3 text-white-opacity-05">Real Estate Agent</span>
                    <p style="color: rgba(0, 0, 0, 0.6);">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores illo iusto, inventore, iure dolorum officiis modi repellat nobis, praesentium perspiciatis, explicabo. Atque cupiditate, voluptates pariatur odit officia libero veniam quo.</p>
                    <p>
                      <a href="#" class="text-black p-2"><i class="fa-brands fa-facebook-f" style="margin-right: 5px;"></i></a>
                      <a href="#" class="text-black p-2"><i class="fa-brands fa-twitter" style="margin-right: 5px;"></i></a>
                      <a href="#" class="text-black p-2"><i class="fa-brands fa-instagram"></i></a>
                    </p>
                  </div>
    
                </div>
              </div>
            </div>
        </div>
        </div>
       <!--공인중개사 소개 끝-->

       <!--footer 시작-->
       <footer class="site-footer" >
        <div class="container">
          <div class="row" style="padding-top: 200PX; padding-left: 50px; width: 60%;">
            <div class="col-lg-4">
              <div class="mb-5">
                <h3 class="footer-heading mb-4">About Homeland</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe pariatur reprehenderit vero atque, consequatur id ratione, et non dignissimos culpa? Ut veritatis, quos illum totam quis blanditiis, minima minus odio!</p>
              </div>
  
              
              
            </div>
            <div class="col-lg-4 mb-5 mb-lg-0">
              <div class="row mb-5" >
                <div class="col-md-12">
                  <h3 class="footer-heading mb-4">Navigations</h3>
                </div>
                <div style="display: flex; ">
                  <div class="col-md-6 col-lg-6" >
                    <ul class="list-unstyled" style="margin-right: 20px;">
                      <li><a href="#">Home</a></li>
                      <li><a href="#">Buy</a></li>
                      <li><a href="#">Rent</a></li>
                      <li><a href="#">Properties</a></li>
                    </ul>
                  </div>
                  <div class="col-md-6 col-lg-6">
                    <ul class="list-unstyled" >
                      <li><a href="#">About Us</a></li>
                      <li><a href="#">Privacy Policy</a></li>
                      <li><a href="#">Contact Us</a></li>
                      <li><a href="#">Terms</a></li>
                    </ul>
                  </div>
              </div>
              </div>
  
  
            </div>
  
            <div class="col-lg-4 mb-5 mb-lg-0">
              <h3 class="footer-heading mb-4">Follow Us</h3>
  
                  <div>
                    <a href="#" class="pl-0 pr-3"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#" class="pl-3 pr-3"><i class="fa-brands fa-twitter"></i></a>
                    <a href="#" class="pl-3 pr-3"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#" class="pl-3 pr-3"><i class="fa-brands fa-linkedin-in"></i></a>
                  </div>
  
              
  
            </div>
            
          </div>
          <div class="row pt-5 mt-5 text-center">
            <div class="col-md-12">
              <p>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              Copyright ©<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script>2022 All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              </p>
            </div>
            
          </div>
        </div>
      </footer>
       <!--footer 끝-->
 
</body>

</html>