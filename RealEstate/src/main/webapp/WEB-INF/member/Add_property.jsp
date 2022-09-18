<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Nunito+Sans:wght@300&display=swap" rel="stylesheet">
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
.col-1, .col-2, .col-3, .col-4, .col-5, .col-6, .col-7, .col-8, .col-9, .col-10, .col-11, .col-12, .col, .col-auto, .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm, .col-sm-auto, .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12, .col-md, .col-md-auto, .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg, .col-lg-auto, .col-xl-1, .col-xl-2, .col-xl-3, .col-xl-4, .col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-10, .col-xl-11, .col-xl-12, .col-xl, .col-xl-auto{
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
.site-section{
    padding:7em 0;
}
.container{
    width: 75%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
.row{
    display: flex;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
}
.mb-5, .my-5{
    margin-bottom: 3rem !important;
}
.col-lg-8{
    flex: 0 0 66.66667%;
    max-width: 66.66667%;
}
.p-5{
    padding: 3rem !important;
}
.border{
    border: 1px solid #dee2e6 !important;
}
.bg-white{
    background-color: #fff !important;
}
form {
    display: block;
    margin-top: 0em;
}
.form-group{
    margin-bottom : 1rem;
}
.mb-md-0, .my-md-0{
    margin-bottom: 0 !important;
}
.font-weight-bold{
    font-weight: 700 !important;
}
label{
    display: inline-block;
    margin-bottom: 0.5rem;
}
.form-control{
    height: 47px;
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
}
button, input{
    overflow: visible;
    margin: 0;
    font-family: inherit;
}
textarea.form-control{
    height: auto;
}
.btn.btn-primary{
    color: #fff;
}
.btn{
    position: relative;
    top: 0;
    display: inline-block;
    font-weight: 400;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    user-select: none;
    border: 1px solid transparent;
    font-size: 1rem;
    line-height: 1.5;
}
.pl-4, .px-4{
    padding-left: 1.5rem !important;
}
.pr-4, .px-4{
    padding-right: 1.5rem !important;
}
.pb-2, .py-2{
    padding-bottom: 0.5rem !important;
}
.pt-2, .py-2{
    padding-top: 0.5rem !important;
}
.rounded-0{
    border-radius: 0 !important;
}
.btn-primary{
    background-color: #1f3c88;
    border-color: #1f3c88;
}
.p-4{
    padding: 1.5rem !important;
}
.mb-3, .my-3{
    margin-bottom: 1rem !important;
}
.bg-white{
    background-color: #fff !important;
}
.text-black{
    color: #000 !important;
}

.text-uppercase{
    text-transform: uppercase !important;
}
.mb-3, .my-3{
    margin-bottom: 1rem !important;
}
h6, .h6{
    font-size: 1rem;
}
h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6{
    font-family: inherit;
    font-weight: 500;
    line-height: 1.2;
}
h3{
    margin-top: 0;
}
.font-weight-bold{
    font-weight: 700 !important;
}
.mb-0, .my-0{
    margin-bottom: 0 !important;
}
p{
    margin-top: 0;
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.mb-4, .my-4{
    margin-bottom: 1.5rem !important;
}
a{
    color: #1f3c88;
    text-decoration: none;
    background-color: transparent;
}
</style>
<body>
<jsp:include page="../navbar.jsp"></jsp:include>
    <div class="site-section">
        
        <div class="container">
            <h1 style="text-align:center; margin-bottom: 40px;">매물 등록</h1>
          <div class="row" style="justify-content: space-evenly;">  
            <div class="col-md-12 col-lg-8 mb-5" style="flex: 0 0 60.66667%;">
              <form action="Add" method="post" enctype="multipart/form-data" class="p-5 bg-white border">
                <div class="row form-group">
                    <div class="col-md-12">
                      <label class="font-weight-bold" for="property_types">매물 종류</label>
                      <select name="property_types" class="form-control d-block rounded-0" required>
                          <option value="아파트/주상복합">아파트/주상복합</option>
                          <option value="주택">주택</option>
                          <option value="원룸/투룸">원룸/투룸</option>
                          <option value="상가점포">상가점포</option>
                        </select>
                    </div>
                  </div>
                <div class="row form-group">
                    <div class="col-md-12">
                      <label class="font-weight-bold" for="select-city">위치</label>
                      <select name="location" class="form-control d-block rounded-0" required> 
                        <option value="성산구">창원시 성산구</option>
                        <option value="의창구">창원시 의창구</option>
                        <option value="합포구">창원시 합포구</option>
                        <option value="회원구">창원시 회원구</option>
                        <option value="진해구">창원시 진해구</option>
                      </select>
                    </div>
                  </div>
                  <div class="row form-group">
                    <div class="col-md-12">
                      <label class="font-weight-bold" for="address">상세 주소</label>
                      <input type="text" name="address" class="form-control" placeholder="상세 주소를 입력하세요." required/>
                    </div>
                  </div>
                <div class="row form-group">
                  <div class="col-md-12 mb-3 mb-md-0">
                    <label class="font-weight-bold" for="trading_types">거래 유형</label>
                    <select name="trading_types" id="trading_types" class="form-control d-block rounded-0" required>
                        <option value="전세">전세</option>
                        <option value="월세">월세</option>
                        <option value="매매">매매</option>
                      </select>
                  </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-12">
                      <label class="font-weight-bold" for="size">계약 면적</label>
                      <input type="text" name="size" class="form-control" placeholder="계약 면적을 입력하세요." required/>
                    </div>
                  </div>
                <div class="row form-group">
                    <div class="col-md-12">
                      <label class="font-weight-bold" for="price">금액</label>
                      <input type="text" name="price" class="form-control" placeholder="거래 금액을 입력하세요." required/>
                    </div>
                  </div>
                
                
                <div class="row form-group">
                  <div class="col-md-12">
                    <label class="font-weight-bold" for="photo">사진</label>
                    <input type="file" name="photo" class="form-control" required/>
                  </div>
                </div>
                
  
                <div class="row form-group">
                  <div class="col-md-12">
                    <label class="font-weight-bold" for="message">소개글</label> 
                    <input type="text" name="message" name="message" cols="30" rows="5" class="form-control" placeholder="매물에 대한 추가적인 설명을 입력하세요."/>
                  </div>
                </div>
  
                <div class="row form-group">
                  <div class="col-md-12" >
                    <input type="submit" value="등록" class="btn btn-primary  py-2 px-4 rounded-0" style="width: 130px; margin-top: 10px;">
                  </div>
                </div>
                </form>
            </div>
  
            <div class="col-lg-4" style="width: 20%;">
              <div class="p-4 mb-3 bg-white">
                <h3 class="h6 text-black mb-3 text-uppercase">Contact Info</h3>
                <p class="mb-0 font-weight-bold">Address</p>
                <p class="mb-4">203 Fake St. Mountain View, San Francisco, California, USA</p>
  
                <p class="mb-0 font-weight-bold">Phone</p>
                <p class="mb-4"><a href="#">+1 232 3235 324</a></p>
  
                <p class="mb-0 font-weight-bold">Email Address</p>
                <p class="mb-0"><a href="#">youremail@domain.com</a></p>
  
              </div>
              
            </div>
          </div>
        </div>
      </div>
</body>
</html>