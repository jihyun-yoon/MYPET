<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

	<tiles:insertAttribute name="asset"></tiles:insertAttribute>

</head>
<body>

    <!-- ########################## header 시작 ########################## -->
    <tiles:insertAttribute name="header"></tiles:insertAttribute>
    <!-- ########################## header 끝 ########################## -->

    <!-- ########################## 좌측 nav 시작 ########################## -->
	<tiles:insertAttribute name="nav1"></tiles:insertAttribute>
    <!-- ########################## 좌측 nav 끝 ########################## -->
    
    <!-- ########################## 상단 nav 시작 ##########################-->
	<tiles:insertAttribute name="nav2"></tiles:insertAttribute>
    <!-- ########################## 상단 nav 끝 ########################## -->


    <!-- ########################## content 시작 ##########################-->
    <tiles:insertAttribute name="content"></tiles:insertAttribute>
    <!-- ########################## content 끝 ##########################-->


    <!-- ########################## footer 시작 ##########################-->
	<tiles:insertAttribute name="footer"></tiles:insertAttribute>
    <!-- ########################## footer 끝 ##########################-->

</body>
</html>