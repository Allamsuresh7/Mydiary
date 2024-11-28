<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Diary</title>
</head>
<body style="font-family: Arial, sans-serif; margin: 0; padding: 0; background-color: #f4f4f9;">

<!-- Header Section -->
<div class="header" style="width: 100%; height: 80px; background-color: #2c3e50; color: white; display: flex; align-items: center; padding: 0 20px;">
    <div class="first" style="width: 50px; margin-right: 10px;">
        <img src="<c:url value='/resources/images/diary.jpeg'/>" width="40" height="40" alt="Diary Logo">
    </div>
    <div class="second" style="font-size: 24px; font-weight: bold;">
        My Diary Application
    </div>
</div>

<hr style="margin: 20px 0;">
  <a href="<c:url value='./signout'/>" style="color:red; float:right; font-size:30px">Sign Out</a>
<!-- Body Section -->
<div class="bodypart" style="display: flex; justify-content: center; align-items: flex-start; padding: 20px;">
    
    <!-- Left Image Section -->
    <div class="bodypart1" style="width: 40%; text-align: center; padding: 10px;">
        <img src="<c:url value='/resources/images/diary.jpeg'/>" alt="Diary Image" style="max-width: 100%; height: auto;">
    </div>
    
    <!-- Right Content Section -->
    <div class="bodypart2" style="width: 50%; background-color: #ffffff; padding: 20px; border-radius: 8px; box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);">
        <h1 style="color: #34495e; margin-bottom: 20px;">View Entry</h1>
        <table style="width: 100%; font-size: 16px; border-spacing: 10px;">
            <tr>
                <td style="font-weight: bold; color: #555;">Date:</td>
                <td>${entry.entrydate}</td>
            </tr>
            <tr>
                <td style="font-weight: bold; color: #555;">Description:</td>
                <td>${entry.description}</td>
            </tr>
        </table>
        
        <br><br>
       
            <a href="userhome"><button type="submit" style="background-color: #3498db; color: white; font-size: 16px; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;">
                Back to Home
            </button></a>
            </div>
    
</div>

</body>
</html>