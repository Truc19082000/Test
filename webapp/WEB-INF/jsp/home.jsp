<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/form.css" />" rel="stylesheet">
        <title>Travel Web Page</title>
    </head>
    <jsp:include page="header.jsp" />
    <body>
        <div id="colorlib-main">
            <section class="ftco-section ftco-no-pt ftco-no-pb bg-light">
                <div class="container px-0">
                    <div class="row no-gutters">
                        <c:forEach var="travel" items="${travelList}">
                            <div class="col-md-4 d-flex">
                                <div class="blog-entry ftco-animate">
                                    <a href="${pageContext.request.contextPath}/view_travel/${travel.travelDescription.id}" class="img" style="background-image: url(<c:url value="/resources/images/${travel.travelDescription.img1}" />);"></a>
                                    <div class="text p-4">
                                        <h3 class="mb-2"><a href="#">${travel.title}</a></h3>
                                        <div class="meta-wrap">
                                            <p class="meta">
                                                <span><i class="icon-calendar mr-2"></i>${travel.postDateFormatted}</span>
                                                <span><i class="icon-folder-o mr-2"></i>${travel.categories.categories}</span>
                                                <span><i class="icon-comment2 mr-2"></i>5 Comment</span>
                                            </p>
                                        </div>
                                        <p class="mb-4">${travel.describes}</p>
                                        <p><a href="#" class="btn-custom">Read More <span class="ion-ios-arrow-forward"></span></a></p>
                                    </div>
                                </div>
                            </div> 
                        </c:forEach>
                        <div class="col-md-4 d-flex">
                            <div class="card" style="width:100%; border: 1px solid black; border-radius: 10%;">
                        <i style="font-size:300px; text-align: center;" class="fa">&#xf055;</i>
                        <div class="card-body" style="border-top: 1px solid black; text-align: center;">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                                Add New
                            </button>
                        </div>
                    </div>
                    <div class="modal fade" id="myModal">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title"> Add New</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <!-- Modal body -->
                                <div class="modal-body">
                                    <mvc:form modelAttribute="travel" action="addNew" method="post">
                                       
                                        
                                         <label>Title</label>
                                        <mvc:input type="text"  path="title" required="true"/>

                                        <label>Describes</label>
                                        <mvc:input type="text"  path="describes" required="true"/>
                                        
                                        <label>Categories</label>
                                        <mvc:select path="categories.id" items="${categoriesList}" />

                                        <label>Description</label>
                                        <mvc:input path="travelDescription.description" required="true" />

                                        <label>Images</label>
                                        <mvc:input path="travelDescription.img1" required="true" />
                                        <mvc:input path="travelDescription.img2" required="true" />
                                        <mvc:input path="travelDescription.img3" required="true" />

                                                                                
                                        <label>Post Date</label>
                                        <mvc:input path="postDate" type="Date" /><br>
                                        
                                        <input type="submit" value="Save">
                                    </mvc:form>
                                </div>
                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                        </div> 
                    </div>    
                </div>
            </section>
        </div><!-- END COLORLIB-MAIN -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

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
