<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
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
* {
    margin: 0;
    padding: 0;
    font-family: 'Nunito Sans', sans-serif;
}

.wrap {
    height: 100%;
    width: 100%;
    background-image: url(images/img_2.jpg);
    background-position: center;
    background-size: cover;
    position: absolute;
    opacity: 0.8;
   
}
.form-wrap {
    width: 420px;
    height: 550px;
    position: relative;
    margin: 0 auto;
    margin-top: 200px;
    background: rgba(255, 255, 255, 0.802);
    padding: 5px;
    overflow: hidden;
}
.button-wrap {
    width: 230px;
    margin: 35px auto;
    position: relative;
    box-shadow: 0 0 600px 9px #918ffc;
    border-radius: 30px;
}
.togglebtn {
    padding: 10px 30px;
    cursor: pointer;
    background: transparent;
    border: 0;
    outline: none;
    position: relative;
    color: white;
}
#btn {
    top: 0;
    left: 0;
    position: absolute;
    width: 110px;
    height: 100%;
    background: linear-gradient(to right, #153ea6, #77ab2d);
    border-radius: 30px;
    transition: .5s;
    
}
.social-icons {
    margin: 50px auto;
    text-align: center;
    font-weight: 900;
}
.social-icons img {
    width: 30px ;
    cursor: pointer;
}
.input-group {
    top: 250px;
    position: absolute;
    width: 280px;
    transition: .5s;
    padding-left: 20px;
}
.input-field {
    width: 100%;
    padding: 10px 0;
    margin: 5px 0;
    border: none;
    border-bottom: 1px solid rgb(7, 6, 6);
    outline: none;
    background: transparent;
}
.submit {
    width: 80%;
    padding: 10px 30px;
    cursor: pointer;
    display: block;
    margin: 0 auto;
    background: linear-gradient(to right, #153ea6, #77ab2d);
    border: 0;
    outline: none;
    border-radius: 30px;
    color: white;
    font-size: large;
    
}
.submit:hover{
    background: linear-gradient(to right,#77ab2d, #153ea6);
}
.checkbox {
    margin: 30px 10px 30px 0;
}
span {
    color: #777;
    font-size: 12px;
    bottom: 68px;
    position: absolute;
}
#login {
    left: 50px;
}
#register {
    left: 450px;
} 
a {
    text-decoration: none;
}
.text-white{
    color: rgb(0, 0, 0);
}
h1{
    line-height: 1.2;
    font-size: 2.5rem;
    font-weight: bolder;
}
.logo_hover > h1 > a:hover{
    text-decoration: underline;
}
</style>
<head>

<title>Insert title here</title>
</head>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Nunito+Sans:wght@300&display=swap" rel="stylesheet">
<body>
 <div class="wrap">
        <div class="form-wrap">
            <div class="social-icons logo_hover">
                <h1 class="mb-0" style="font-weight: bold;">
                    <a href="/RealEstate/home" class="text-white h2 mb-0">Homeland
                        <p class="text-danger" style="color: #f23a2e; display: inline;">.</p></a></h1>
                    <p style="font-weight: solid; font-size:small; color:gray;">창원의 집을 찾다</p>
            </div>
            <div class="button-wrap">
                <div id="btn"></div>
                <button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                <button type="button" class="togglebtn" style="color: black;" onclick="register()">REGISTER</button>
            </div>
           
            <form:form id="login" action="submit" modelAttribute="loginCommand" class="input-group">
                <form:input type="text" path="id" class="input-field" placeholder="User Id" required="required"/>
                <form:input type="password" path="password" class="input-field" placeholder="Enter Password" required="required"/>
                <form:checkbox path="rememberId" class="checkbox"/><span>Remember ID</span>
                <input type="submit" value="Login" class="submit"/>
            </form:form>
            
        </div>
    </div>
    <script>
        var x = document.getElementById("login");
        var y = document.getElementById("register");
        var z = document.getElementById("btn");
        
        function login(){
            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = "0";
        }

        function register(){
        	 location.href = "/RealEstate/join";
        }
    </script>
</body>
</html>