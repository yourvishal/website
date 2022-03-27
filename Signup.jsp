<%-- 
    Document   : Signup
    Created on : 21-Feb-2022, 10:58:20 pm
    Author     : PRIYESH JAISWAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Form</title>
    <STYle>
        * {
    margin:0px;
    padding:0px;
}

html {
    margin:0px;
    padding:0px;
}

body {
    margin:0px;
    padding:0px;
   height: 100vh;
   background: linear-gradient(#11d3f1 , #76d876);
   font-family: 'Lusitana', serif;

    
}

.containner {
    background-color: white;
    height: 500px;
    width: 600px;
    margin: auto;
    margin-top: 50px;
    border-radius: 15px;
    display: flex;
    box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.5);
}

.containner .slider , .containner .form {
    width: 50%;
}

.slider {
    background-image: url(image/1.jpg);
    background-position: center;
    background-size: cover;
    border-radius: 15px 0px 0px 15px;
    animation-name: slider;
    animation-duration: 18s;
    animation-iteration-count: infinite;
}


@keyframes slider {

   0% {
       background-image: url(image/a1.jpg);
   }

   25% {
    background-image: url(image/a2.jpg);
}

50% {
    background-image: url(image/a3.jpg);
}

75% {
    background-image: url(image/a4.jpg);
}

100% {
    background-image: url(image/a1.jpg);
}
}



.form {
    padding: 20px;
    height: 1005;
    position: relative;
}

.form .form-title h1 {
    text-align: center;
    margin-bottom: 5px;
}

.form-title {
    padding-bottom: 30px;
}


.form div {
    margin: 20px;
}

.form input {
    border: none;
    outline: none;
}

form div:not(.checkbox) {
    border-bottom: 2px solid #11d3f1;
}

button {
    padding: 5px 15px;
    background-color: white
    ;
    border: 3px solid #11d3f1;
    border-radius: 50px;
    color: #11d3f1;
    font-weight: bold;
    float: right;
    margin-right: 20px;
}


button:hover {
    border-color: #76d876;
    color: #76d876;
}

form label {
    color: gray;
}

.socials {
    position: absolute;
    bottom: 0px;
   left: 80px;
}

.socials i {
    margin: 3px;
    font-size: 20px;
}
    </STYle>
    

    
</head>
<body>
    

<div class="containner">

<div class="slider"></div>

<div class="form">
<div class="form-title">
    <h1>Register</h1>
</div>

<form id="form1" name="form1" method="post" action="Signuphandler.jsp">
          <%
      if("blank".equals((String)request.getParameter("msg")))
          out.print("Invalid Entry...");
      %>


<div class="name">
    <label for="name">Name</label>
    <input type="text" name="name" id="name">
</div>

<div class="Email">
    <label for="email">Email</label>
    <input type="email" name="email" id="email">
</div>

<div class="phone">
    <label for="phone">Phone</label>
    <input type="tel" name="phone" id="phone">
</div>

<div class="password">
    <label for="name" >Password</label>
    <input type="password" name="password" id="password">
</div>



<button type="submit">SIGNUP</button>

</form>

</body>
</html>
