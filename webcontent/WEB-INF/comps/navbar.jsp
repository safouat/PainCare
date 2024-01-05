<!-- main header -->
<header class="main-header">
    <div class="outer-box clearfix">
        <div class="logo-box pull-left">
            <figure class="logo"><a href="index.html"><img width="70" src="assets/images/logo.png" alt=""></a></figure>
        </div>
        <div class="menu-area pull-right">
            <!--Mobile Navigation Toggler-->
            <div class="mobile-nav-toggler">
                <i class="icon-bar"></i>
                <i class="icon-bar"></i>
                <i class="icon-bar"></i>
            </div>
            <nav class="main-menu navbar-expand-md navbar-light">
                <div class="collapse navbar-collapse show clearfix" id="navbarSupportedContent">
                    <ul class="navigation scroll-nav clearfix">
                        <li class="current"><a href="index.html">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#symptoms">Symptoms</a></li>
                        <li><a href="#prevention">Prevention</a></li>
                        <li><a href="#faq">FAQ</a></li>
                        <li class="dropdown"><a href="index.html">News</a>
                            <ul>
                                <li><a href="blog-1.html">Blog Grid</a></li>
                                <li><a href="blog-2.html">Blog Sidebar</a></li>
                                <li><a href="blog-details.html">Blog Details</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
            <div class="btn-box">
                <a href="index.html" class="theme-btn"><i class="fas fa-phone"></i>Emergency Call</a>
            </div>
        </div>
    </div>

    <!--sticky Header-->
    <div class="sticky-header">
        <div class="outer-box clearfix">
            <div class="logo-box pull-left">
                <figure class="logo"><a href="index.html"><img src="assets/images/small-logo.png" alt=""></a></figure>
            </div>
            <div class="menu-area pull-right">
                <nav class="main-menu clearfix">
                    <!--Keep This Empty / Menu will come through Javascript-->
                </nav>
                <div class="btn-box">
                    <a href="index.html" class="theme-btn"><i class="fas fa-phone"></i>Emergency Call</a>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- main-header end -->

    <!-- Mobile Menu  -->
    <div class="mobile-menu">
        <div class="menu-backdrop"></div>
        <div class="close-btn"><i class="fas fa-times"></i></div>
        
        <nav class="menu-box">
            <div class="menu-outer"><!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header--></div>
            <div class="contact-info">
                <h4>Contact Info</h4>
                <ul>
                    <li>Chicago 12, Melborne City, USA</li>
                    <li><a href="tel:+8801682648101">+88 01682648101</a></li>
                    <li><a href="mailto:info@example.com">info@example.com</a></li>
                </ul>
            </div>
            <div class="social-links">
                <ul class="clearfix">
                    <li><a href="index.html"><span class="fab fa-twitter"></span></a></li>
                    <li><a href="index.html"><span class="fab fa-facebook-square"></span></a></li>
                    <li><a href="index.html"><span class="fab fa-pinterest-p"></span></a></li>
                    <li><a href="index.html"><span class="fab fa-instagram"></span></a></li>
                    <li><a href="index.html"><span class="fab fa-youtube"></span></a></li>
                </ul>
            </div>
        </nav>
    </div><!-- End Mobile Menu -->

<!-- <div class="app-top-bar shadow-sm">
    <div class="container d-flex align-items-center">
        <c:if test="${not empty userBean}">
            <div class="avatar">
                <c:if test="${not empty userBean.getAvatar()}">
                    <img width="75" height="75" src="${userBean.getAvatar()}" class="logo" alt="Logo">
                </c:if>
                <c:if test="${empty userBean.getAvatar()}">
                    <img width="75" height="75" src="assets/images/logo.png" class="logo" alt="Logo">
                </c:if>
            </div>
            <div class="user-name ">
                <h3 class="m-0 mx-3">${userBean.getName()}</h3>
            </div>
        </c:if>
        <ul class="p-3 flex-grow-1 d-flex justify-content-center list-unstyled p-0 m-0">
            <li>
                <a class="p-3" href="home">Home</a>
            </li>
            <li>
                <a class="p-3" href="blogs">Blogs</a>
            </li>
        </ul>
        <div class="user-actions">
            <c:if test="${not empty userBean}">
                <a href="publish">
                    <button class="btn btn-primary">
                        Publish
                    </button>
                </a>
                <a href="update_profile">
                    <button class="btn btn-primary">
                        Edit Profile
                    </button>
                </a>
                <a href="logout">
                    <button class="btn btn-danger">
                        Logout
                    </button>
                </a>
            </c:if>
            <c:if test="${empty userBean}">
                <a href="login">
                    <button class="btn btn-primary">
                        Login
                    </button>
                </a>
            </c:if>
        </div>
    </div>
</div> -->