<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<head>
    <title>Homeland &mdash; Colorlib Website Template</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/property-details.css">
    <script src="https://kit.fontawesome.com/6e0e070c43.js" crossorigin="anonymous"></script>
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
    width: 78%;
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
    margin-right: -15px;
    margin-left: -15px;

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
    margin-top: 20px;
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
/* 네비 바 끝 */

/* 상단 메뉴 시작 */
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
/* 상단 메뉴 끝 */

/* 상세 정보 시작 */
.site-section.site-section-sm {
    padding: 4em 0;
}
.col-lg-8 {
    flex: 0 0 66.66667%;
    max-width: 66.66667%;
}
.no-js .owl-carousel, .owl-carousel.owl-loaded {
    display: block;

}
.block-13, .slide-one-item {
    position: relative;
    z-index: 1;
}
.owl-carousel {
    /* display: none; */
    width: 100%;
    z-index: 1;
    object-fit: cover;
    border-style: solid;
    border-width: .5px;
    border-color: #8080803b;
    position: relative;
}
.owl-carousel, .owl-carousel .owl-item {
    position: relative;
}
.owl-carousel .owl-stage-outer {
    position: relative;
    overflow: hidden;
}
.owl-carousel .owl-item img {
    display: block;
    width: 100%;
}
.img-fluid {
    max-width: 100%;
    height: auto;
}
img {
    vertical-align: middle;
    border-style: none;
    width:100%;
}
.property-body {
    padding: 40px;
}
.border-left {
    border-left: 1px solid #dee2e6 !important;
}
.border-bottom {
    border-bottom: 1px solid #dee2e6 !important;
}
.border-right {
    border-right: 1px solid #dee2e6 !important;
}
.mb-5, .my-5 {
    margin-bottom: 3rem !important;
}
.col-md-6 {
    flex: 0 0 50%;
    max-width: 50%;
}
.property-specs-wrap {
    list-style: none;
    padding: 0;
    margin: 0;
}
.mb-lg-0, .my-lg-0 {
    margin-bottom: 0 !important;
}
.float-lg-right {
    float: right !important;
}
.property-specs-wrap li {
    display: inline-block;
    margin-right: 30px;
    margin-bottom: 10px;
}
.property-specs {
    display: block;
    text-transform: uppercase;
    font-size: 10px;
    letter-spacing: .1em;
}
.property-specs-wrap {
    list-style: none;
    padding: 0;
    margin: 0;
}
sup {
    top: -0.5em;
}
sub, sup {
    position: relative;
    font-size: 75%;
    line-height: 0;
    vertical-align: baseline;
}
.pb-3, .py-3 {
    padding-bottom: 1rem !important;
}
.pt-3, .py-3 {
    padding-top: 1rem !important;
}
.caption-text {
    letter-spacing: .2em;
    font-size: 12px;
    text-transform: uppercase;
    padding-top: 5px;
    padding-bottom: 5px;
}
.text-black {
    color: #000 !important;
}
.d-block {
    display: block !important;
}
h4, .h4 {
    font-size: 1.5rem;
}
.mt-5, .my-5 {
    margin-top: 3rem !important;
}
.no-gutters {
    margin-right: 0;
    margin-left: 0;
}
.no-gutters > .col, .no-gutters > [class*="col-"] {
    padding-right: 0;
    padding-left: 0;
}
.col-12 {
    flex: 0 0 100%;
    max-width: 100%;
}
h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.col-lg-3 {
    flex: 0 0 25%;
    max-width: 25%;
}
.widget {
    padding: 40px;
    margin-bottom: 30px;
}
.border {
    border: 1px solid #dee2e6 !important;
}
.widget .widget-title {
    font-size: 14px;
    font-weight: bold;
    color: #000;
    text-transform: uppercase;
    letter-spacing: .1em;
}
form {
    display: block;
    margin-top: 0em;
}
.form-group {
    margin-bottom: 1rem;
}
label {
    display: inline-block;
    margin-bottom: 0.5rem;
}
label {
    cursor: default;
}
.form-contact-agent .form-control {
    height: 37px;
}
.form-control {
    display: block;
    width: 100%;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
}
button, input {
    overflow: visible;
}
input, button, select, optgroup, textarea {
    margin: 0;
    font-family: inherit;
}
input {
    writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    text-rendering: auto;
    color: fieldtext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    appearance: auto;
    -webkit-rtl-ordering: logical;
    cursor: text;
    background-color: field;
    margin: 0em;
    padding: 1px 2px;
    border-width: 2px;
    border-style: inset;
    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
}
.btn:not(:disabled):not(.disabled) {
    cursor: pointer;
}
.btn.btn-primary {
    color: #fff;
}
.btn {
    position: relative;
    top: 0;
}
.btn-primary {
    color: #fff;
    background-color: #1f3c88;
    border-color: #1f3c88;
}
.btn {
    display: inline-block;
    font-weight: 400;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    border: 1px solid transparent;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: 0.25rem;
    -webkit-transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
    transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
    -o-transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
}
.btn-primary:hover {
    color: #fff;
    background-color: #182e69;
    border-color: #162a5e;
}
/* 상세 정보 끝 */

/* RELATED PROPERTIES 시작 */
.bg-light {
    background: #f9f9f9 !important;
}
.site-section-title h2 {
    text-transform: uppercase;
    color: #000;
    font-weight: 700;
    font-size: 2rem;
    letter-spacing: .1em;
}
.mb-4, .my-4 {
    margin-bottom: 1.5rem !important;
}
.property-entry {
    box-shadow: 0 0 10px -2px rgb(0 0 0 / 10%);
    background: #fff;
}
.h-100 {
    height: 100% !important;
}
.property-entry .property-body {
    position: relative;
}
.p-4 {
    padding: 1.5rem !important;
}
.property-entry .property-favorite:hover, .property-entry .property-favorite.active {
    background: #f23a2e;
    color: #fff;
}
.property-entry .property-favorite {
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
.property-entry .property-title {
    font-size: 1.2rem;
}
.property-entry .property-title a {
    color: #000;
}
.property-entry .property-location {
    font-size: .9rem;
}
.property-entry .property-price {
    font-size: 1.3rem;
}
.property-entry .property-specs-wrap {
    list-style: none;
    padding: 0;
    margin: 0;
}
.property-entry .property-specs-wrap li {
    display: inline-block;
    margin-right: 10px;
    margin-bottom: 10px;
}
.property-entry .property-specs {
    display: block;
    text-transform: uppercase;
    font-size: 10px;
    letter-spacing: .1em;
}
.property-entry .property-specs-number {
    font-size: 1.2rem;
    color: #000;
}
.property-entry .property-thumbnail {
    overflow: hidden;
    position: relative;
    display: block;
}
.property-entry .offer-type-wrap {
    position: absolute;
    top: 10px;
    left: 10px;
    z-index: 8;
}
.property-entry .property-thumbnail .offer-type {
    display: block;
    margin-bottom: 5px;
    padding: 1px 7px;
    color: #fff;
    text-transform: uppercase;
    letter-spacing: .2em;
    font-size: 9px;
    border-radius: 4px;
}
.bg-danger {
    background-color: #f23a2e !important;
}
.bg-success {
    background-color: #7cbd1e !important;
}
a:hover {
    text-decoration: none;
}
/* RELATED PROPERTIES 끝 */

/* footer 시작 */
.site-footer {
    padding: 7em 0;
}
.site-footer {
    padding: 4em 0;
    background: #333333;
}
article, aside, figcaption, figure, footer, header, hgroup, main, nav, section {
    display: block;
}
.site-footer .footer-heading {
    font-size: 14px;
    text-transform: uppercase;
    letter-spacing: .1em;
    color: #fff;
    position: relative;
    padding-bottom: 15px;
}
.site-footer p {
    color: #737373;
}
.col-md-12 {
    flex: 0 0 100%;
    max-width: 100%;
}
.site-footer .footer-heading {
    font-size: 14px;
    text-transform: uppercase;
    letter-spacing: .1em;
    color: #fff;
    position: relative;
    padding-bottom: 15px;
}
.col-lg-6 {
    flex: 0 0 50%;
    max-width: 50%;
}
.list-unstyled {
    padding-left: 0;
    list-style: none;
}
ol, ul, dl {
    margin-top: 0;
    margin-bottom: 1rem;
}
.site-footer ul li {
    margin-bottom: 10px;
}
.list-unstyled {
    padding-left: 0;
    list-style: none;
}
.site-footer a {
    color: #999999;
}
.site-footer a:hover {
    color: white;
}
.site-footer .footer-heading:before {
    content: "";
    background: #fff;
    width: 40px;
    height: 2px;
    position: absolute;
    bottom: 0;
}
*, *::before, *::after {
    box-sizing: border-box;
}
.site-navbar .site-navigation .site-menu .has-children:hover .dropdown{
    visibility: visible;
    opacity: 1;
    z-index: 100;

}
.site-navbar .site-navigation .site-menu .has-children .dropdown > li > a:hover {
    color: #1f3c88;
    background-color: #343a401c;
}
html {
  scroll-behavior: smooth;
}

.property-favorite{
    position: absolute;
    border-radius: 50%;
    top: 10px;
    right: 10px;
    width: 50px;
    height: 50px;
    line-height: 50px;
    background: #fff;
    text-align: center;
}
.property-favorite span{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
/* footer 끝 */
  </style>
  <script src="https://kit.fontawesome.com/6e0e070c43.js" crossorigin="anonymous"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=20337f149747da985b2e51a21a6e14e6&libraries=services"></script>
  
  <body>
  <!--네비 바 시작-->
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
                   <li><a href="/RealEstate/home#search">매물 검색</a></li>
                  <li><a href="#">지도로 검색</a></li>
                  <li><a href="/RealEstate/home#introduce">중개사 소개</a></li>
                  <li class="has-children">
                     <c:if test="${empty authInfo }">
                    <a href="./login">회원 메뉴</a>
                    <ul class="dropdown arrow-top" style="padding-top:20px;">
                      <li><a href="./login">로그인/회원가입</a></li>
                      <li><a href="./login">매물 등록</a></li>
                      <li><a href="./login">내 매물 조회</a></li>
                      <li><a href="./login">문의 확인</a></li>
                      <li><a href="./login">찜한 매물</a></li>
                    </ul>
                   </c:if>
                   <c:if test="${!empty authInfo }">
                    <a href="#">회원 메뉴</a>
                    <ul class="dropdown arrow-top" style="padding-top:20px;">
                      <li><a href="/RealEstate/member/Add_property">매물 등록</a></li>
                      <li><a href="/RealEstate/member/List_property">내 매물 조회</a></li>
                      <li><a href="/RealEstate/member/Messages">문의 확인</a></li>
                      <li><a href="/RealEstate/member/Like_property">찜한 매물</a></li>
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
    <!--네비 바 끝-->

    <!--상단 메뉴 시작-->
    <div class="site-blocks-cover inner-page-cover overlay" 
    style="background-image: url(<spring:url value='/resources/images/hero_bg_2.jpg'/>); background-position: 50% 0px; filter: brightness(70%); opacity: 0.9;"
     data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-md-10">
            <span class="d-inline-block text-white px-3 mb-3 property-offer-type rounded">창원의 모든 집을 Homeland에서 알아보세요.</span>
            <h1 class="mb-2">With Homeland, you can be happy!</h1>
            <p class="mb-5"><strong class="h2 text-success font-weight-bold">always homeland.</strong></p>
          </div>
        </div>
      </div>
    </div>
    <!--상단 메뉴 끝-->

    <!--상세 정보 시작-->
    <div class="site-section site-section-sm">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <div>
              <div class="slide-one-item home-slider owl-carousel">
              <a href="./member/like?address=${property.address}" class="property-favorite"><i class="fa-solid fa-heart" style="color: black; font-size: 25px; display: inline-block; padding-top: 12px;"></i></a>
                <div><img src="<spring:url value='/resources/images/${property.photo}'/>" alt="Image" class="img-fluid"></div>
              </div>
            </div>
            <div class="bg-white property-body border-bottom border-left border-right">
              <div class="row mb-5">
                <div class="col-md-6">
                  <strong class="text-success h1 mb-3">${property.price}</strong>
                </div>
                <div class="col-md-6">
                  <ul class="property-specs-wrap mb-3 mb-lg-0  float-lg-right">
                   <li>
                    <span class="property-specs">거래유형</span>
                     <span class="property-specs-number">${property.trading_types}</span>
                 </li>
                  <li>
                    <span class="property-specs">주소</span>
                    <span class="property-specs-number"><i class="fa-solid fa-location-dot" style="opacity: 0.7;"></i>${property.address}</span>
                  </li>
                 
                </ul>
                </div>
              </div>
              <div class="row mb-5">
                <div class="col-lg-4 text-center border-bottom border-top py-3">
                  <span class="d-inline-block text-black mb-0 caption-text">위치</span>
                  <strong class="d-block">${property.location}</strong>
                </div>
                <div class="col-lg-4 text-center border-bottom border-top py-3">
                  <span class="d-inline-block text-black mb-0 caption-text">매물 유형</span>
                  <strong class="d-block">${property.property_types}</strong>
                </div>
                <div class="col-lg-4 text-center border-bottom border-top py-3">
                  <span class="d-inline-block text-black mb-0 caption-text">면적</span>
                  <strong class="d-block">${property.size}</strong>
                </div>
               
              </div>
              <h2 class="h4 text-black">집주인 소개글</h2>
              <p>${property.message}</p>

              <div class="row no-gutters mt-5">
                <div class="col-12">
                  <h2 class="h4 text-black mb-3">지도</h2>
                </div>
				<div id="map" style="width:100%;height:350px;"></div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">

            <div class="bg-white widget border rounded">

              <h3 class="h4 text-black widget-title mb-3">집주인에게 연락하기</h3>
              <form:form action="sendMessage?address=${property.address}" modelAttribute="message" class="form-contact-agent">
                <div class="form-group">
                  <label for="name">이름</label>
                  <form:input type="text" path="m_name" class="form-control" placeholder="필수입력사항" required="required"/>
                </div>
                <div class="form-group">
                  <label for="message">문의글</label>
                  <form:input type="text" path="message" class="form-control" placeholder="필수입력사항" required="required"/>
                </div>
                <div class="form-group">
                  <label for="phone">연락받을 번호</label>
                  <form:input type="text" path="m_phone" class="form-control" placeholder="번호로만 입력해주세요" required="required"/>
                </div>
                <div class="form-group">
                  <input type="submit" class="btn btn-primary" value="Send Message">
                </div>
              </form:form>
            </div>

            <div class="bg-white widget border rounded">
              <h3 class="h4 text-black widget-title mb-3">홈랜드 서비스</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit qui explicabo, libero nam, saepe eligendi. Molestias maiores illum error rerum. Exercitationem ullam saepe, minus, reiciendis ducimus quis. Illo, quisquam, veritatis.</p>
            </div>

          </div>
          
        </div>
      </div>
    </div>
    <!--상세 정보 끝-->

    <!--RELATED PROPERTIES 시작-->
    <div class="site-section site-section-sm bg-light">
      <div class="container">

        <div class="row">
          <div class="col-12">
            <div class="site-section-title mb-5">
              <h2>Related Properties</h2>
            </div>
          </div>
        </div>
      	
        <div class="row mb-5">
        <c:if test="${! empty propertyList }">
        <c:forEach var="propertyList" items="${propertyList}">
          <div class="col-lg-4 mb-4">
            <div class="property-entry h-100">
              <a href="property-details.html" class="property-thumbnail">
                <div class="offer-type-wrap">
                  <span class="offer-type bg-danger">${propertyList.trading_type}</span>
                </div>
                <img src="images/img_1.jpg" alt="Image" class="img-fluid">
              </a>
              <div class="p-4 property-body">
                <a href="#" class="property-favorite"><i class="fa-solid fa-heart" style="color: black; font-size: 25px; display: inline-block; padding-top: 12px;"></i></a>
                <h2 class="property-title"><a href="property-details.html">${propertyList.location}</a></h2>
                <span class="property-location d-block mb-3"><span class="property-icon icon-room"></span>${propertyList.address}</span>
                <strong class="property-price text-primary mb-3 d-block text-success">${propertyList.price}</strong>
                <ul class="property-specs-wrap mb-3 mb-lg-0">
                  <li>
                    <span class="property-specs">Beds</span>
                    <span class="property-specs-number">2 <sup>+</sup></span>
                    
                  </li>
                  <li>
                    <span class="property-specs">Baths</span>
                    <span class="property-specs-number">2</span>
                    
                  </li>
                  <li>
                    <span class="property-specs">SQ FT</span>
                    <span class="property-specs-number">7,000</span>
                    
                  </li>
                </ul>
              </div>
            </div>

          </div>
		  </c:forEach>
          </c:if>
          <div class="col-lg-4 mb-4">
            <div class="property-entry h-100">
              <a href="property-details.html" class="property-thumbnail">
                <div class="offer-type-wrap">
                  <span class="offer-type bg-danger">Sale</span>
                  <span class="offer-type bg-success">Rent</span>
                </div>
                <img src="images/img_2.jpg" alt="Image" class="img-fluid">
              </a>
              <div class="p-4 property-body">
                <a href="#" class="property-favorite"><i class="fa-solid fa-heart" style="color: black; font-size: 25px; display: inline-block; padding-top: 12px;"></i></a>
                <h2 class="property-title"><a href="property-details.html">871 Crenshaw Blvd</a></h2>
                <span class="property-location d-block mb-3"><span class="property-icon icon-room"></span> 1 New York Ave, Warners Bay, NSW 2282</span>
                <strong class="property-price text-primary mb-3 d-block text-success">$2,265,500</strong>
                <ul class="property-specs-wrap mb-3 mb-lg-0">
                  <li>
                    <span class="property-specs">Beds</span>
                    <span class="property-specs-number">2 <sup>+</sup></span>
                    
                  </li>
                  <li>
                    <span class="property-specs">Baths</span>
                    <span class="property-specs-number">2</span>
                    
                  </li>
                  <li>
                    <span class="property-specs">SQ FT</span>
                    <span class="property-specs-number">1,620</span>
                    
                  </li>
                </ul>

              </div>
            </div>
          </div>

          <div class="col-lg-4 mb-4">
            <div class="property-entry h-100">
              <a href="property-details.html" class="property-thumbnail">
                <div class="offer-type-wrap">
                  <span class="offer-type bg-info">Lease</span>
                </div>
                <img src="images/img_3.jpg" alt="Image" class="img-fluid">
              </a>
              <div class="p-4 property-body">
                <a href="#" class="property-favorite"><i class="fa-solid fa-heart" style="color: black; font-size: 25px; display: inline-block; padding-top: 12px;"></i></a>
                <h2 class="property-title"><a href="property-details.html">853 S Lucerne Blvd</a></h2>
                <span class="property-location d-block mb-3"><span class="property-icon icon-room"></span> 853 S Lucerne Blvd Unit 101 Los Angeles, CA 90005</span>
                <strong class="property-price text-primary mb-3 d-block text-success">$2,265,500</strong>
                <ul class="property-specs-wrap mb-3 mb-lg-0">
                  <li>
                    <span class="property-specs">Beds</span>
                    <span class="property-specs-number">2 <sup>+</sup></span>
                    
                  </li>
                  <li>
                    <span class="property-specs">Baths</span>
                    <span class="property-specs-number">2</span>
                    
                  </li>
                  <li>
                    <span class="property-specs">SQ FT</span>
                    <span class="property-specs-number">5,500</span>
                    
                  </li>
                </ul>

              </div>
            </div>
          </div>
        </div>
      </div>
    <!--RELATED PROPERTIES 끝-->

    <!--footer 시작-->
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="mb-5">
              <h3 class="footer-heading mb-4">About Homeland</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe pariatur reprehenderit vero atque, consequatur id ratione, et non dignissimos culpa? Ut veritatis, quos illum totam quis blanditiis, minima minus odio!</p>
            </div>
          </div>
          <div class="col-lg-4 mb-5 mb-lg-0">
            <div class="row mb-5">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Navigations</h3>
              </div>
              <div class="col-md-6 col-lg-6">
                <ul class="list-unstyled">
                  <li><a href="#">Home</a></li>
                  <li><a href="#">Buy</a></li>
                  <li><a href="#">Rent</a></li>
                  <li><a href="#">Properties</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-6">
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Privacy Policy</a></li>
                  <li><a href="#">Contact Us</a></li>
                  <li><a href="#">Terms</a></li>
                </ul>
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
            Copyright &copy;<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
    <!--footer 끝-->
  </div>

    
  </body>
<script type="text/javascript">
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};  

//지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

//주소로 좌표를 검색합니다
geocoder.addressSearch('${property.address}', function(result, status) {

// 정상적으로 검색이 완료됐으면 
 if (status === kakao.maps.services.Status.OK) {

    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

    // 결과값으로 받은 위치를 마커로 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: coords
    });

    // 인포윈도우로 장소에 대한 설명을 표시합니다
    var infowindow = new kakao.maps.InfoWindow({
        content: '<div style="width:150px;text-align:center;padding:6px 0; font-size:5px;">${property.address}</div>'
    });
    infowindow.open(map, marker);

    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    map.setCenter(coords);
} 
});    
</script>
</html>