<div class="app-top-bar shadow-sm">
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
</div>