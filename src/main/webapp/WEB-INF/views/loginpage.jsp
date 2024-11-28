<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Dairy</title>
<link rel="stylesheet" href="<c:url value="/resources/sstyles/style.css"/>">
</head>
<body>
<div class="header">


<div class="first">
<img src="<c:url value="/resources/images/diary.jpeg"/>" width="40" height="40">
</div>
<div class="second">
       My Diary Application
 </div>
 <br/>
<br>
</div>
<br/>
<br/>
<hr/>
 <div class="bodypart">
 
 <div class="bodypart1">
 <img src="<c:url value="/resources/images/diary.jpeg"/>">
 
 </div>
 
 <div class="bodypart2">
 <h1>Login Here</h1><br><br>
 <form action="authenticateUser"  method="Post">
 <label>username:</label><input type="text" name="username" class="formcontrol"><br><br>
 <label>password:</label><input type="password" name="password" class="formcontrol"><br><br><br>
 <button type="submit">Login</button>
 
 
 
 
 </form>
 <br><br>
 New user?<a href="./register">Register</a>Here
 
 </div>
 
 
 </div>

</body>
</html>