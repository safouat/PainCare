<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="activePage" value="blogs" />
<c:set var="css_links" value="${['assets/css/blogs.css']}" />

<%@include file="/WEB-INF/comps/dashboard/header.jsp" %>

<div class="containter" style="padding: 0 10em;">
    <section class="page-title centred p-0 m-3">

        <div class="auto-container">
            <div class="content-box">
                <h1>Personal Blogs</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="/DiagnosticAI/index.jsp">Profile</a></li>
                    <li>Manage Blogs </li><br>
                    <li>
                        <a class="btn-box theme-btn m-3" data-bs-toggle="modal" data-bs-target="#partInfoModal1"
                            href="publish" role="button">
                            Publish
                        </a>
    
                    </li>
                </ul>
    
    
            </div>
        </div>
    </section>
        
    <div class="pagination-wrapper centred m-3">
        <ul class="pagination clearfix">
            <c:forEach begin="1" end="${totalPages}" var="page">
                <li>
                    <c:if test="${page == currentPage}">
                        <a href="manage_blog?page=${page}" class="active">${page}</a>
                    </c:if>
                    <c:if test="${page != currentPage}">
                        <a href="manage_blog?page=${page}">${page}</a>
                    </c:if>
                </li>
            </c:forEach>
        </ul>
    </div>

    <table class="table table-striped table-centered mb-3 border shadow-sm">
        <thead>
            <tr>
                <th>Picture</th>
                <th>Title</th>
                <th>Created Date</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="blog" items="${blogs}">
                <tr>
                    <td class="table-user">
                        <img src="${blog.getImage()}" alt="table-user" class="me-1" style="border-radius: 50%; width: 75px; height: 75px; object-fit: cover; object-position: center;" />
    
                    </td>
                    <td> ${blog.getTitle()}</td>
                    <td>${blog.getDate().toString()} </td>
                    <td class="table-action">
                        <a href="remove_blog?blog_id=${blog.getID()}" class="action-icon theme-btn-icon mr-3">
                            <i class="fas fa-trash"></i>
                        </a>
                        <a href="update_blog?id=${blog.getID()}" class="action-icon theme-btn-icon">
                            <i class="fas fa-edit"></i>
                        </a>
                    </td>
                </tr>
            </c:forEach>
    
        </tbody>
    </table>

</div>

        
<%@include file="/WEB-INF/comps/dashboard/footer.jsp" %>