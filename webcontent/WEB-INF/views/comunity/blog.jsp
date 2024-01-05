<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="css_links" value="${['assets/css/blogs.css']}" />

<%@include file="/WEB-INF/comps/header.jsp" %>

<%@include file="/WEB-INF/comps/navbar.jsp" %>

<div class="container mt-3">
    <strong>${blog.getUserName()} - </strong>
    <span>${blog.getDate().toString()}</span>
    <h1>${blog.getTitle()}</h1>
    <div class="blog-cnt">
        <div class="blog-page p-3 rounded bg-white shadow-sm m-3">
            <div class="blog-page-image mx-3">
                <img src="${blog.getImage()}"/>
            </div>
            <div class="blog-info d-flex flex-column p-3">
                <div class="flex-grow-1">
                    <p>${blog.getDescription()}</p>
                </div>
            </div>
            <div class="blog-commets">
                <div class="d-flex">
                    <h2 class="flex-grow-1">Comments</h2>
                    <button data-bs-toggle="modal" data-bs-target="#comment_modal" class="btn btn-primary">Write Comment</button>
                </div>
                <ul>
                    <c:forEach var="comment" items="${comments}">
                        <li class="d-flex comment shadow-sm border m-3 align-items-center">
                            <div class="comment-avatar m-3">
                                <img src="${comment.getAvatar()}" width="50" height="50" />
                            </div>
                            <div class="comment-content m-3 flex-grow-1">
                                <strong>${comment.getUserName()} - </strong>
                                <span>${comment.getDate().toString()}</span>
                                <p>${comment.getContent()}</p>
                            </div>
                            <c:if test="${userBean.getID() eq comment.getUserID()}">
                                <a href="remove_comment?comment_id=${comment.getID()}&blog_id=${comment.getBlogID()}">
                                    <button class="btn btn-danger m-3">
                                        Delete
                                    </button>
                                </a>
                            </c:if>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
</div>

<form action="comment" method="post">
    <div class="modal fade" id="comment_modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Write Comment</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <input name="blog_id" type="hidden" value="${blog.getID()}" />
                <textarea rows="5" class="form-control" name="content"></textarea>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Comment</button>
            </div>
        </div>
        </div>
    </div>
</form>


<%@include file="/WEB-INF/comps/footer.jsp" %>