<%--
  Created by IntelliJ IDEA.
  User: rezar
  Date: 30.09.2023
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="req" value="${pageContext.request}" />
<c:set var="baseURL" value="${req.scheme}://${req.serverName}:${req.serverPort}${req.contextPath}" />
<html>
<head>
    <title>Reza Rowghani - Photographer and Software Developer</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./assets/custom.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div class="row">
    <div class="col" style="position: relative">
        <img class="arrow-left" src="${applicationScope.imagesFolder}Random/left-arrow.png" alt="arrow" onclick="backToPictures('${baseURL}pictures?category=${category}&scrollAmount=${scrollAmount}&picsSwitch=${picsSwitch}')">
        <img src="${path}" width="100%">
    </div>
</div>
<script src="./assets/customJS.js"></script>
</body>
</  html>
