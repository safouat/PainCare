<%@include file="/WEB-INF/comps/header.jsp" %>

<div class="dashboard-cnt d-flex">
    <side class="dashboard-side-bar p-3 bg-white">
        <div class="user-info d-flex flex-column h-100">
            <div class="user-avatar text-center">
                <img width="100" height="100" src="${userBean.getAvatar()}" class="logo" alt="Logo">
                <p>${userBean.getName()}</p>
                <a href="update_profile">Update Profile</a>
            </div>
            <div class="side-bar-content flex-grow-1 d-flex justify-content-center mt-3 pt-3">
                <ul class="list-unstyled text-center side-bar-links">
                    <li class="m-3">
                        <a class="active" href="#">Dashboard</a>
                    </li>
                    <li class="m-3">
                        <a href="#">Diagnostic Test</a>
                    </li>
                    <li class="m-3">
                        <a href="#">Pain Track</a>
                    </li>
                    <li class="m-3">
                        <a href="#">Manage Blogs</a>
                    </li>
                </ul>
            </div>
            <div class="side-bar-footer text-center">
                <a href="home" class="theme-btn"><i class="fas fa-sign-out-alt"></i>Exit</a>
            </div>
        </div>
    </side>
    <main class="dashboard-content flex-grow-1">
