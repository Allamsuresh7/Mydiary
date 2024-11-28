<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
  <a href="<c:url value='./signout'/>" style="color:red; float:right; font-size:30px">Sign Out</a>
 <div class="bodypart">
 
 <div class="bodypart1">
 <img src="<c:url value="/resources/images/diary.jpeg"/>">
 
 </div>
 
 <div class="bodypart2">
 <h1>Update Entry</h1><br><br>
 <form action="./processentryupdate"  method="Post">
 <label>Date:</label><input type="text" name="entrydate" class="formcontrol" value="${entry.entrydate}" pattern="yyyy-MM-dd" readonly><br><br>
 <label>Description:</label>
 <textarea rows="3" cols="40" name="description">  ${entry.description}</textarea>

 <input type="hidden" name="userid" value="${user.id }">
 <input type="hidden" name="id" value="${entry.id }">
  <br><br><br>
 <button type="submit">Update  entry</button>
 
 
 
 
 </form>
 
 </div>
 
 
 </div>

</body>
</html>