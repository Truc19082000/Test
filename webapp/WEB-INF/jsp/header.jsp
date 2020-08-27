<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Abril+Fatface&display=swap" rel="stylesheet">
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/open-iconic-bootstrap.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/owl.carousel.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/owl.theme.default.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/magnific-popup.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/aos.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/ionicons.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap-datepicker.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/jquery.timepicker.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/flaticon.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/icomoon.css" />" rel="stylesheet">
    </head>
    <div id="colorlib-page">
        <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
        <aside id="colorlib-aside" role="complementary" class="js-fullheight img" style="background-image: url(/images/sidebar-bg.jpg);">
            <h1 id="colorlib-logo" class="mb-4"><a href="home.jsp" >Travel</a></h1>
            <nav id="colorlib-main-menu" role="navigation">
                <ul>
                    <li class="colorlib-active"><a href="${pageContext.request.contextPath}/">Home</a></li>
                        <c:forEach var="menu" items="${menus}">
                        <li><a href="${pageContext.request.contextPath}/contact/${menu.id}">${menu.name}</a></li>
                        </c:forEach>
                </ul>
            </nav>
            <div class="colorlib-footer">
                <div class="mb-4">                   
                    <form action="${pageContext.request.contextPath}/search" method="get" class="colorlib-subscribe-form">
                        <div class="form-group d-flex">
                            <div class="icon">
                                <button type="submit" class="icon icon-search" style="color: black;"></button>
                            </div>
                            <input type="text" name="searchText" xid="searchText" value="${searchText}" class="form-control" placeholder="Search">                 
                        </div>
                    </form>
                </div>
               <h3><a href="${pageContext.request.contextPath}/user/showUserPage">Go to user page</a></h3>
                <p class="pfooter">
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by
            </div>
        </aside>
    </div>
</html>
