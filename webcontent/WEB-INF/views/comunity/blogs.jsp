<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="css_links" value="${['assets/css/blogs.css']}" />

<%@include file="/WEB-INF/comps/header.jsp" %>

<%@include file="/WEB-INF/comps/navbar.jsp" %>

<div class="container mt-3">
    <div class="blogs-cnt">
        <c:forEach var="blog" items="${blogs}">
            <div class="d-flex blog-item p-3 rounded bg-white shadow-sm m-3">
                <div class="blog-image mx-3">
                    <img src="${blog.getImage()}"/>
                </div>
                <div class="blog-info d-flex flex-column">
                    <div class="flex-grow-1">
                        <strong>${blog.getUserName()} - </strong>
                        <span>${blog.getDate().toString()}</span>
                        <h3>${blog.getTitle()}</h3>
                        <p>${blog.getDescription()}</p>
                    </div>
                    <div>
                        <a href="blog?id=${blog.getID()}">
                            <button class="btn btn-primary">Read</button>
                        </a>
                        <c:if test="${userBean.getID() eq blog.getUserID()}">
                            <a href="update_blog?id=${blog.getID()}">
                                <button class="btn btn-success m-3">
                                    Update
                                </button>
                            </a>
                            <a href="remove_blog?blog_id=${blog.getID()}">
                                <button class="btn btn-danger">
                                    Delete
                                </button>
                            </a>
                        </c:if>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>


<%@include file="/WEB-INF/comps/footer.jsp" %>