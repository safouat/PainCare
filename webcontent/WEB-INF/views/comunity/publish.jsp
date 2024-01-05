<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="css_links" value="${['assets/css/form-page.css']}" />

<%@include file="/WEB-INF/comps/header.jsp" %>

<div class="app-form-cnt container">

    <div class="text-center mb-3">
        <h1 class="h3">
			<c:if test="${empty blog}"> Publish Blog </c:if>
			<c:if test="${not empty blog}"> Update Blog </c:if>
		</h1>
        <c:if test="${not empty form_error}">
            <p class="text-sm text-danger">${form_error}</p>
        </c:if>
    </div>

	<form action="" method="POST" enctype="multipart/form-data">
        <div class="mb-3">
			<label for="image">Image :</label>
			<input  name="image" type="file" class="form-control" id="image" placeholder="Image" accept="image/*">
		</div>
		<div class="mb-3">
			<label for="title">Title :</label>
			<input <c:if test="${not empty blog}"> value="${blog.getTitle()}" </c:if> name="title" type="text" class="form-control" id="title" placeholder="Title">
		</div>
		<div class="mb-3">
			<label for="description">Description :</label>
            <textarea rows="5" name="description" class="form-control" id="description" placeholder="Description"><c:if test="${not empty blog}">${blog.getDescription()}</c:if></textarea>
		</div>
		
		<button type="submit" class="my-3 btn btn-primary block w-100">Publish</button>
	</form>
	
</div>

<%@include file="/WEB-INF/comps/footer.jsp" %>