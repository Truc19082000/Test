<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Page</title>
    </head>
    <jsp:include page="header.jsp" />
    <body>
        <div id="colorlib-page">
            <div id="colorlib-main">
                <section class="ftco-section ftco-no-pt ftco-no-pb">
                    <div class="container px-0">
                        
                        <div class="row no-gutters block-9">
                            <div class="col-lg-6 order-md-last">
                                <form action="#" class="bg-primary p-5 contact-form">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Your Name">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Your Email">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Subject">
                                    </div>
                                    <div class="form-group">
                                        <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Send Message" class="btn btn-white py-3 px-5">
                                    </div>
                                </form>
                            </div>
                            <%-- Map --%>
                            <div class="col-lg-6 d-flex">
                                <div id="map" class="bg-light"></div>
                            </div>
                        </div>
                        
                            <%-- Contact --%>
                        <div class="row d-flex mb-5 px-4 px-md-4 contact-info mt-5">
                            <div class="col-md-12 mb-4">
                                <h2 class="h3">Contact Information</h2>
                            </div>
                            <div class="w-100"></div>
                            <c:forEach var="contact" items="${contactList}">
                                <div class="col-lg-6 col-xl-3 mb-4">
                                    <div class="info">
                                        <p><span>Address: </span>${contact.address}</p>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-xl-3 mb-4">
                                    <div class="info">
                                        <p><span>Phone:</span> <a href="tel://${contact.phone}">${contact.phone}</a></p>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-xl-3 mb-4">
                                    <div class="info">
                                        <p><span>Email:</span> <a href="mailto:${contact.email}">${contact.email}</a></p>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-xl-3 mb-4">
                                    <div class="info">
                                        <p><span>Website</span> <a href="${contact.webSite}">${contact.webSite}</a></p>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        
                    </div>
                </section>
            </div>
        </div>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/main.js"></script>
        <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
        <script src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js" />"></script>
        <script src="<c:url value="/resources/js/popper.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
        <script src="<c:url value="/resources/js/jquery.easing.1.3.js" />"></script>
        <script src="<c:url value="/resources/js/jquery.waypoints.min.js" />"></script>
        <script src="<c:url value="/resources/js/jquery.stellar.min.js" />"></script>
        <script src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>
        <script src="<c:url value="/resources/js/jquery.magnific-popup.min.js" />"></script>
        <script src="<c:url value="/resources/js/aos.js" />"></script>
        <script src="<c:url value="/resources/js/jquery.animateNumber.min.js" />"></script>
        <script src="<c:url value="/resources/js/scrollax.min.js" />"></script>
        <script src="<c:url value="/resources/js/google-map.js" />"></script>
        <script src="<c:url value="/resources/js/main.js" />"></script>
    </body>
</html>
