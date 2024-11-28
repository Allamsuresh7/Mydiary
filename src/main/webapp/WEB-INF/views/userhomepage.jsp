<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Dairy</title>
    <link rel="stylesheet" href="<c:url value='/resources/sstyles/style.css'/>">
</head>
<body>
    <div class="header">
        <div class="first">
            <img src="<c:url value='/resources/images/diary.jpeg'/>" width="40" height="40">
        </div>
        <div class="second">
            My Diary Application
        </div>
        <br><br>
    </div>
    <br><br>
    <hr>
    <br><br>
    <div class="userhome">
        <p style="font-size:30px">Welcome, <span style="color:SteelBlue; font-size:30px">${user.username}</span></p>
        <a href="<c:url value='./signout'/>" style="color:red; float:right; font-size:30px">Sign Out</a>
        <br><br><br>
        <span class="heading" style="color:orange; font-size:30px">List of Past Entries</span>
        <button type="button" onclick="location.href='<c:url value="/addentry"/>'" style="float:right">Add Entry</button>
        <br><br>
        <table border="1" style="width:90%; border-collapse:collapse;">
            <tr>
                <th style="padding:10px;">Date</th>
                <th style="padding:10px;" colspan="3">Actions</th>
            </tr>
            <c:if test="${empty entrieslist}">
                <tr>
                    <td colspan="3" style="text-align:center; color:gray;">No entries found.</td>
                </tr>
            </c:if>
            <c:forEach items="${entrieslist}" var="e">
                <tr>
                    <td style="padding:10px;">
                    
                    <fmt:formatDate value="${e.entrydate}" pattern="dd/MM/yyyy"/>
                    </td>
                    <td style="padding:10px;"><a href="<c:url value='/viewentry?id=${e.id}'/>">View</a></td>
                    <td style="padding:10px;"><a href="<c:url value='/updateentry?id=${e.id}'/>">Update</a></td>
                    <td style="padding:10px;"><a href="<c:url value='/updateentry?id=${e.id}'/>">Delete</a></td>
                   
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
