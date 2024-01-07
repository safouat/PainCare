<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap JS and Popper.js (required for Bootstrap) -->
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

  <c:set var="css_links" value="${'assets/css/blogs.css'}" />


    <style>
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
    <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">


    <!-- Your other stylesheets and scripts... -->

    <!-- Quill Library -->
    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>

    <!-- Your other scripts... -->

    <!-- Quill Initialization Script -->
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var quill = new Quill('#editor-container', {
                modules: {
                    toolbar: [
                        ['bold', 'italic'],
                        ['link', 'blockquote', 'code-block'],
                        [{ list: 'ordered' }, { list: 'bullet' }]
                    ]
                },
                placeholder: 'Type your Content',
                theme: 'snow'
            });
        });
    </script>
    <%@include file="/WEB-INF/comps/header.jsp" %>

        <%@include file="/WEB-INF/comps/navbar.jsp" %>
            <section class="page-title centred">
                <div class="shape-layer" style="background-image: url(assets/images/shape/shape-4.png);"></div>
                <div class="anim-icon">
                    <div class="icon icon-1 rotate-me" style="background-image: url(assets/images/;"></div>
                    <div class="icon icon-2 rotate-me" style="background-image: url(assets/images/);"></div>
                </div>
                <div class="auto-container">
                    <div class="content-box">
                        <h1>Blogs</h1>
                        <ul class="bread-crumb clearfix">
                            <li><a href="/DiagnosticAI/index.jsp">Home</a></li>
                            <li>Blogs </li>
                        </ul>


                    </div>
                </div>
            </section>
            <section class="news-section blog-grid">
                <div class="auto-container">
                    <div class="row clearfix">
                        <c:forEach var="blog" items="${blogs}">
                            <div class="col-lg-4 col-md-6 col-sm-12 news-block  container">
                                <div class="news-block-one wow fadeInUp animated animated" data-wow-delay="00ms"
                                    data-wow-duration="1500ms">
                                    <div class="inner-box">
                                        <figure class="image-box"><a href="blog?id=${blog.getID()}"><img
                                                    src="${blog.getImage()}" /></a></figure>
                                        <div class="lower-content">

                                            <h3><a href="blog-details.html">${blog.getTitle()}</a></h3>
                                            <ul class="post-info clearfix">
                                                <li><img src="${blog.getUserImage()}" />${blog.getUserName()} </li>
                                                <li>${blog.getDate().toString()}</li>

                                            </ul>
                                            <p>${blog.getDescription()}</p>
                                            <div class="btn-box"><a href="Blog?id=${blog.getID()}">See Details</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>








                    </div>
                    <div class="pagination-wrapper centred">
                        <ul class="pagination clearfix">
                            <c:forEach begin="1" end="${totalPages}" var="page">
                                <li>
                                    <c:if test="${page == currentPage}">
                                        <a href="/PainCare/BrowseBlogs?page=${page}" class="active">${page}</a>
                                    </c:if>
                                    <c:if test="${page != currentPage}">
                                        <a href="/PainCare/BrowseBlogs?page=${page}">${page}</a>
                                    </c:if>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>




                </div>
            </section>



<%@include file="/WEB-INF/comps/footer.jsp" %>