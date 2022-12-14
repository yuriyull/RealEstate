<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
</head>
<style>
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
    padding-inline-start: 40px;
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

/* ?????? ??? ?????? */
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
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
.align-items-center {
    align-items: center !important;
}
.row {
    display: flex;
    flex-wrap: wrap;
    margin-right: 15px;
    margin-left: 15px;
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
/* ?????? ??? ??? */

/* ?????? ?????? ?????? */
[data-aos^=fade][data-aos^=fade].aos-animate {
    opacity: 1;
    transform: translate(0);
}
[data-aos][data-aos][data-aos-duration="800"], body[data-aos-duration="800"] [data-aos] {
    transition-duration: .8s;
}
.site-blocks-cover.inner-page-cover, .site-blocks-cover.inner-page-cover .row {
    min-height: 600px;
    height: calc(30vh);
}
.site-blocks-cover.overlay {
    position: relative;
}
[data-aos^=fade][data-aos^=fade] {
    opacity: 1;
    transition-property: opacity,transform;
}
.site-blocks-cover {
    background-size: cover;
    background-repeat: no-repeat;
}
.site-blocks-cover.inner-page-cover, .site-blocks-cover.inner-page-cover .row {
    min-height: 600px;
    height: calc(30vh);
}
.text-center {
    text-align: center !important;
}
.justify-content-center {
    justify-content: center !important;
}
.row {
    display: flex;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
    width:78%;
    margin: 0 auto;
}
.col-md-10 {
    flex: 0 0 83.33333%;
    max-width: 83.33333%;
}
.site-blocks-cover .property-offer-type {
    letter-spacing: .2em;
    font-size: 12px;
    text-transform: uppercase;
    padding-top: 5px;
    padding-bottom: 5px;
}
.pl-3, .px-3 {
    padding-left: 1rem !important;
}
.pr-3, .px-3 {
    padding-right: 1rem !important;
}
.mb-3, .my-3 {
    margin-bottom: 1rem !important;
}
.d-inline-block {
    display: inline-block !important;
}
.rounded {
    border-radius: 0.25rem !important;
}
.site-blocks-cover h1 {
    color: #fff;
    font-weight: normal;
    letter-spacing: .1em;
    text-transform: uppercase;
}
.mb-2, .my-2 {
    margin-bottom: 0.5rem !important;
}
h1, .h1 {
    font-size: 2.5rem;
}
.site-blocks-cover p {
    color: #fff;
    font-size: 1.5rem;
    line-height: 1.5;
}
.mb-5, .my-5 {
    margin-bottom: 3rem !important;
}
p {
    margin-top: 0;
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.text-success {
    color: #7cbd1e !important;
}
.font-weight-bold {
    font-weight: 700 !important;
}
.site-navbar .site-navigation .site-menu .has-children:hover .dropdown{
    visibility: visible;
    opacity: 1;
    z-index: 100;

}
/* ?????? ?????? ??? */
  	
  </style>
  <body>
  <!--?????? ??? ??????-->
  <div class="site-wrap">
    <div class="site-navbar mt-4">
        <div class="container py-1">
          <div class="row align-items-center">
            <div class="col-8 col-md-8 col-lg-4">
              <h1 class="mb-0"><a href="/RealEstate/home" class="text-white h2 mb-0"><strong>Homeland<span class="text-danger">.</span></strong></a></h1>
            	<p style="font-weight: solid; font-size:small; color:gray; margin-top:-7px;">????????? ?????? ??????</p>
            </div>
            <div class="col-4 col-md-4 col-lg-8">
              <nav class="site-navigation text-right text-md-right" role="navigation">
                <ul class="site-menu js-clone-nav d-none d-lg-block">
                  <li class="active" style="margin-right:5px;">
                    <a href="/RealEstate/home">Home</a>
                  </li>
                  <li><a href="/RealEstate/home#search">?????? ??????</a></li>
                  <li><a href="#">????????? ??????</a></li>
                  <li><a href="/RealEstate/home#introduce">????????? ??????</a></li>
                  <li class="has-children">
                     <c:if test="${empty authInfo }">
                    <a href="/RealEstate/login">?????? ??????</a>
                    <ul class="dropdown arrow-top" style="padding-top:20px;">
                      <li><a href="/RealEstate/login">?????????/????????????</a></li>
                      <li><a href="/RealEstate/login">?????? ??????</a></li>
                      <li><a href="/RealEstate/login">?????? ??????</a></li>
                    </ul>
                   </c:if>
                   <c:if test="${!empty authInfo }">
                    <a href="/RealEstate/Add_property">?????? ??????</a>
                    <ul class="dropdown arrow-top" style="padding-top:20px;">
                      <li><a href="/RealEstate/Add_property">?????? ??????</a></li>
                      <li><a href="/RealEstate/List_property">?????? ??????</a></li>
                      <li><a href="/RealEstate/logout">????????????</a></li> 
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
    <!--?????? ??? ???-->

    <!--?????? ?????? ??????-->
    <div class="site-blocks-cover inner-page-cover overlay" 
    style="background-image: url(<spring:url value='/resources/images/hero_bg_2.jpg'/>); background-position: 50% 0px; filter: brightness(70%); opacity: 0.9;"
     data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-md-10">
            <span class="d-inline-block text-white px-3 mb-3 property-offer-type rounded">????????? ?????? ?????? Homeland?????? ???????????????.</span>
            <h1 class="mb-2">With Homeland, you can be happy!</h1>
            <p class="mb-5"><strong class="h2 text-success font-weight-bold">always homeland.</strong></p>
          </div>
        </div>
      </div>
    </div>
    <!--?????? ?????? ???-->