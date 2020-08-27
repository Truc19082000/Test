<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:include page="header.jsp" />
    <body>
        <div id="colorlib-page">
            <div id="colorlib-main">
                <section class="ftco-section ftco-no-pt ftco-no-pb">
                    <div class="container px-0">
                        <div class="row d-flex no-gutters">
                            <div class="col-lg-8 px-md-5 py-5">
                                <%-- Description--%>
                                <div class="row">    
                                    <c:catch var="travel">
                                        <h1 class="mb-3">${travel.title}</h1>
                                        <p><span><i class="icon-calendar mr-2"></i>${travel.postDateFormatted}</span>
                                            <img src="<c:url value="/resources/images/${travel.travelDescription.img1}" />" alt="" class="img-fluid">
                                        </p>
                                        <p>${travel.travelDescription.description}</p>
                                        <h2 class="mb-3 mt-5">#2. Creative WordPress Themes</h2>
                                        <p>
                                            <img src="<c:url value="/resources/images/${travel.travelDescription.img2}" />" alt="" class="img-fluid">
                                        </p>
                                        <p>
                                            <img src="<c:url value="/resources/images/${travel.travelDescription.img3}" />" alt="" class="img-fluid">
                                        </p>
                                        <div class="tag-widget post-tag-container mb-5 mt-5">
                                            <div class="tagcloud">
                                                <a href="#" class="tag-cloud-link">${travel.categories.categories}</a>
                                            </div>
                                        </div>
                                    </c:catch>


                                    <div class="pt-5 mt-5">
                                        <h3 class="mb-5 font-weight-bold">6 Comments</h3>
                                        <ul class="comment-list">
                                            <li class="comment">
                                                <div class="vcard bio">
                                                    <img src="images/person_1.jpg" alt="Image placeholder">
                                                </div>
                                                <div class="comment-body">
                                                    <h3>John Doe</h3>
                                                    <div class="meta">October 03, 2018 at 2:21pm</div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                                    <p><a href="#" class="reply">Reply</a></p>
                                                </div>
                                            </li>

                                            <li class="comment">
                                                <div class="vcard bio">
                                                    <img src="images/person_1.jpg" alt="Image placeholder">
                                                </div>
                                                <div class="comment-body">
                                                    <h3>John Doe</h3>
                                                    <div class="meta">October 03, 2018 at 2:21pm</div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                                    <p><a href="#" class="reply">Reply</a></p>
                                                </div>

                                                <ul class="children">
                                                    <li class="comment">
                                                        <div class="vcard bio">
                                                            <img src="images/person_1.jpg" alt="Image placeholder">
                                                        </div>
                                                        <div class="comment-body">
                                                            <h3>John Doe</h3>
                                                            <div class="meta">October 03, 2018 at 2:21pm</div>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                                            <p><a href="#" class="reply">Reply</a></p>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                        <!-- END comment-list -->
                                        <div class="comment-form-wrap pt-5">
                                            <h3 class="mb-5">Leave a comment</h3>
                                            <form action="#" class="p-3 p-md-4 bg-light">
                                                <div class="form-group">
                                                    <label for="name">Name *</label>
                                                    <input type="text" class="form-control" id="name">
                                                </div>
                                                <div class="form-group">
                                                    <label for="email">Email *</label>
                                                    <input type="email" class="form-control" id="email">
                                                </div>
                                                <div class="form-group">
                                                    <label for="website">Website</label>
                                                    <input type="url" class="form-control" id="website">
                                                </div>

                                                <div class="form-group">
                                                    <label for="message">Message</label>
                                                    <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <input type="submit" value="Post Comment" class="btn py-3 px-4 btn-primary">
                                                </div>

                                            </form>
                                        </div>
                                    </div>
                                </div><!-- END-->
                            </div>
                            <div class="col-lg-4 sidebar ftco-animate bg-light pt-5">
                                <div class="sidebar-box pt-md-4">
                                    <form action="#" class="search-form">
                                        <div class="form-group">
                                            <span class="icon icon-search"></span>
                                            <input type="text" class="form-control" placeholder="Search">
                                        </div>
                                    </form>
                                </div>
                                <div class="sidebar-box ftco-animate">
                                    <h3 class="sidebar-heading">Categories</h3>
                                    <c:forEach var="categories" items="${categoriesList}">
                                    <ul class="categories">
                                        <c:catch var="travel">
                                        <li><a href="#">${categories.categories}
                                                <span>(${travel.categories})</span>
                                            </a>
                                        </li>
                                        </c:catch>
                                    </ul>
                                    </c:forEach>
                                </div>

                                <div class="sidebar-box ftco-animate">
                                    <h3 class="sidebar-heading">Popular Articles</h3>
                                    <div class="block-21 mb-4 d-flex">
                                        <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
                                        <div class="text">
                                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control</a></h3>
                                            <div class="meta">
                                                <div><a href="#"><span class="icon-calendar"></span> Sept. 12, 2019</a></div>
                                                <div><a href="#"><span class="icon-person"></span> Dave Lewis</a></div>
                                                <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="block-21 mb-4 d-flex">
                                        <a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
                                        <div class="text">
                                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control</a></h3>
                                            <div class="meta">
                                                <div><a href="#"><span class="icon-calendar"></span> Sept. 12, 2019</a></div>
                                                <div><a href="#"><span class="icon-person"></span> Dave Lewis</a></div>
                                                <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="block-21 mb-4 d-flex">
                                        <a class="blog-img mr-4" style="background-image: url(images/image_3.jpg);"></a>
                                        <div class="text">
                                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control</a></h3>
                                            <div class="meta">
                                                <div><a href="#"><span class="icon-calendar"></span> Sept. 12, 2019</a></div>
                                                <div><a href="#"><span class="icon-person"></span> Dave Lewis</a></div>
                                                <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%-- aaaaaaa--%>
                                <div class="sidebar-box subs-wrap img px-4 py-5" style="background-image: url(images/bg_1.jpg);">
                                    <div class="overlay"></div>
                                    <h3 class="mb-4 sidebar-heading">Newsletter</h3>
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia</p>
                                    <form action="#" class="subscribe-form">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Email Address">
                                            <input type="submit" value="Subscribe" class="mt-2 btn btn-white submit">
                                        </div>
                                    </form>
                                </div>
                                <%-- aaaaaaa--%>
                                <div class="sidebar-box ftco-animate">
                                    <h3 class="sidebar-heading">Archives</h3>
                                    <ul class="categories">
                                        <li><a href="#">December 2018 <span>(10)</span></a></li>
                                        <li><a href="#">September 2018 <span>(6)</span></a></li>
                                        <li><a href="#">August 2018 <span>(8)</span></a></li>
                                        <li><a href="#">July 2018 <span>(2)</span></a></li>
                                        <li><a href="#">June 2018 <span>(7)</span></a></li>
                                        <li><a href="#">May 2018 <span>(5)</span></a></li>
                                    </ul>
                                </div>


                                <div class="sidebar-box ftco-animate">
                                    <h3 class="sidebar-heading">Paragraph</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut.</p>
                                </div>
                            </div><!-- END COL -->
                        </div>
                    </div>
                </section>
            </div><!-- END COLORLIB-MAIN -->
        </div>
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
