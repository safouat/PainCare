<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <%@include file="/WEB-INF/comps/dashboard/header.jsp" %>
        <style>
            .table td {
                padding: 0.75rem;

            }

            .fa-trash:before {
                content: "\f1f8";
                color: black;
            }

            .fa-edit:before {
                content: "\f044";
                color: black;
            }

            i {
                margin: 3px;
            }

            .rounded-circle {
                border-radius: 50% !important;
                width: 130px;
                height: 115px;
            }

            .blogs-cnt {
                max-width: 800px;
                margin: auto;
            }

            .blog-page-image {
                max-width: 100%;
            }


            .blog-page-image img {
                max-width: 100%;
            }

            .blog-image {
                width: 300px;
                height: 200px;
            }

            .blog-image img {
                width: 100%;
                height: 100%;
                object-fit: contain;
            }

            .news-block-one .inner-box .image-box {
                position: relative;
                display: block;
                overflow: hidden;
                background: #000;
                /* max-height: 210px; */
                max-height: 200px;
            }

            img.icons {
                height: 90px;
            }

            .anim-icon {
                position: absolute;
                left: 0px;
                top: 0px;
                right: 0px;
                width: 100%;
                height: 100%;
                max-width: 1920px;
                margin: 0 auto;
                background-color: #daf7f5;
            }

            #editor-container {
                height: 130px;
                color: black;
            }

            .fa-times:before {
                content: "\f00d";
                font-size: 28px;
                /* background-color: #daf7f5; */
                background-color: white;
            }

            input:focus {
                outline: none;
            }

            .title {
                font-family: 'Poppins', sans-serif;

            }

            button.browse.btn.px-4 {
                color: #fff;
                background-color: var(--main-color);
                border-color: var(--main-color);
            }

            .modal-footer {
                border-top: none !important;
            }

            .sidebar-page-container .sidebar .sidebar-post .post-inner .post .post-thumb img {
                width: 100%;
                border-radius: 10px;
                transition: all 500ms ease;
                height: 81px;
            }
        </style>

        <section class="page-title centred">
            <div class="shape-layer" style="background-image: url(assets/images/shape/shape-4.png);"></div>
            <div class="anim-icon">
                <div class="icon icon-1 rotate-me" style="background-image: url(assets/images/;"></div>
                <div class="icon icon-2 rotate-me" style="background-image: url(assets/images/);"></div>
            </div>
            <div class="auto-container">
                <div class="content-box">
                    <h1>Personal Blogs</h1>
                    <ul class="bread-crumb clearfix">
                        <li><a href="/DiagnosticAI/index.jsp">Profile</a></li>
                        <li>Manage Blogs </li><br>
                        <li>
                            <a class="btn-box theme-btn" data-bs-toggle="modal" data-bs-target="#partInfoModal1"
                                href="publish" role="button">
                                Publish
                            </a>

                        </li>
                    </ul>


                </div>
            </div>
        </section>

        <table class="table table-striped table-centered mb-0">
            <thead>
                <tr>
                    <th>Blog Picture</th>
                    <th>Blog Title</th>
                    <th>Time</th>
                    <th>Content Blog</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="blog" items="${blogs}">
                    <tr>
                        <td class="table-user">
                            <img src="${blog.getImage()}" alt="table-user" class="me-1 rounded-circle" />

                        </td>
                        <td> ${blog.getTitle()}</td>
                        <td>${blog.getDate().toString()} </td>
                        <td>${blog.getDescription()}</td>
                        <td class="table-action">
                            <a href="remove_blog?blog_id=${blog.getID()}" class="action-icon"> <i
                                    class="mdi mdi-pencil"><i class="fas fa-trash"></i></a>
                            <a href="update_blog?id=${blog.getID()}" class="action-icon"> <i
                                    class="fas fa-edit"></i></a>
                        </td>
                    </tr>
                </c:forEach>

            </tbody>
        </table>

        <div class="pagination-wrapper centred">
            <ul class="pagination clearfix">
                <c:forEach begin="1" end="${totalPages}" var="page">
                    <li>
                        <c:if test="${page == currentPage}">
                            <a href="/PainCare/UserBlog?id=${userBean.getID()}&page=${page}" class="active">${page}</a>
                        </c:if>
                        <c:if test="${page != currentPage}">
                            <a href="/PainCare/UserBlog?id=${userBean.getID()}&page=${page}">${page}</a>
                        </c:if>

                    </li>
                </c:forEach>
            </ul>
        </div>





<%@include file="/WEB-INF/comps/dashboard/footer.jsp" %>