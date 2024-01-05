<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="css_links" value="${['assets/css/form-page.css']}" />

<%@include file="/WEB-INF/comps/header.jsp" %>

<div class="app-form-cnt container">

    <div class="text-center mb-3">
        <img width="100" height="100" src="assets/images/logo.png" class="logo" alt="Logo">
        <h1 class="h3">Update Profile</h1>
        <c:if test="${not empty form_error}">
            <p class="text-sm text-danger">${form_error}</p>
        </c:if>
    </div>

	<form action="" method="POST" enctype="multipart/form-data">
        <div class="mb-3">
			<label for="avatar">Avatar :</label>
			<input name="avatar" type="file" class="form-control" id="avatar" placeholder="Avatar" accept="image/*">
		</div>
		<div class="mb-3">
			<label for="name">Username :</label>
			<input value="${userBean.getName()}" name="name" type="text" class="form-control" id="name" placeholder="Username">
		</div>
		<div class="mb-3">
			<label for="birth-day">Birth Day :</label>
			<input name="birth-day" type="date" class="form-control" id="birth-day" placeholder="Password">
		</div>
		
		<button type="submit" class="my-3 btn btn-primary block w-100">Update Profile</button>
	</form>
	
</div>

<%@include file="/WEB-INF/comps/footer.jsp" %>