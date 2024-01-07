<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <c:set var="css_links" value="${['assets/css/blogs.css']}" />
    <style>
        .sidebar-page-container .sidebar .sidebar-post .post-inner .post .post-thumb img {
            width: 100%;
            border-radius: 10px;
            transition: all 500ms ease;
            height: 81px;
        }
    </style>
    <%@include file="/WEB-INF/comps/header.jsp" %>

        <%@include file="/WEB-INF/comps/navbar.jsp" %>
            <section class="sidebar-page-container blog-details">
                <div class="auto-container">
                    <div class="row clearfix">
                        <div class="col-lg-8 col-md-12 col-sm-12 content-side">
                            <div class="blog-details-content">
                                <div class="news-block-one">
                                    <div class="inner-box">
                                        <figure class="image-box"><img src="${blog.getImage()}" /></figure>
                                        <div class="lower-content">

                                            <h2>${blog.getTitle()}</h2>
                                            <ul class="post-info clearfix">

                                                <li><img src="${blog.getUserImage()}" />${blog.getUserName()} </li>
                                                <li>${blog.getDate().toString()}</li>

                                            </ul>
                                            <div class="text">
                                                <p>${blog.getDescription()}</p>



                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="comments-area">
                                    <div class="group-title">
                                        <h3>Comments</h3>
                                    </div>
                                    <div class="comment-box">
                                        <c:forEach var="comment" items="${comments}">
                                            <div class="comment">
                                                <figure class="thumb-box">
                                                    <img src="${comment.getAvatar()}" width="50" height="50" />
                                                </figure>
                                                <div class="comment-inner">
                                                    <div class="info">
                                                        <h4>${comment.getUserName()}</h4>
                                                        <span
                                                            class="comment-time">${comment.getDate().toString()}</span>
                                                    </div>
                                                    <p>${comment.getContent()}</p>

                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="comments-form-area">
                                    <div class="group-title">
                                        <h3>Leave a Comment</h3>
                                    </div>


                                    <c:choose>
                                        <c:when test="${not empty sessionScope.user}">
                                            <form method="post" action="comment" id="contact-form" class="default-form">
                                                <div class="row clearfix">

                                                    <div class="col-lg-12 col-md-12 col-sm-12 form-group">
                                                        <input name="blog_id" type="hidden" value="${blog.getID()}" />
                                                        <textarea name="content"
                                                            placeholder="Leave A Comment"></textarea>
                                                    </div>

                                                    <div class="col-lg-12 col-md-12 col-sm-12 form-group message-btn">
                                                        <button class="theme-btn" type="submit"
                                                            name="submit-form">Submit Now</button>
                                                    </div>
                                                </div>
                                            </form>


                                        </c:when>
                                        <c:otherwise>
                                            <form action="/PainCare/Login" method="get" id="contact-form"
                                                class="default-form">
                                                <div class="row clearfix">

                                                    <div class="col-lg-12 col-md-12 col-sm-12 form-group">
                                                        <textarea placeholder="Leave A Comment"></textarea>
                                                    </div>

                                                    <div class="col-lg-12 col-md-12 col-sm-12 form-group message-btn">
                                                        <button class="theme-btn" type="submit">Submit Now</button>
                                                    </div>
                                                </div>
                                            </form>

                                        </c:otherwise>
                                    </c:choose>





                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12 sidebar-side">
                            <div class="sidebar">

                                <div class="sidebar-widget sidebar-post">
                                    <div class="widget-title">
                                        <h4>Recent Posts</h4>
                                    </div>
                                    <div class="post-inner">
                                        <c:forEach var="blog" items="${blogs}">
                                            <div class="post">
                                                <figure class="post-thumb"><a href="blog?id=${blog.getID()}"><img
                                                            src="${blog.getImage()}" alt=""></a></figure>
                                                <h5><a href="blog?id=${blog.getID()}">${blog.getTitle()}</a></h5>
                                                <span class="post-date">${blog.getDate().toString()}</span>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </section>



            <%@include file="/WEB-INF/comps/footer.jsp" %>