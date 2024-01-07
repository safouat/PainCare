<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="css_links" value="${['assets/css/form-page.css']}" />
<style>
 button.browse.btn.px-4 {
            color: #fff;
            background-color: var(--main-color);
            border-color: var(--main-color);
        }
      
input#name {
    width: 384px;
    margin-left: 12px;
}
input#birth-day {
  width: 384px;
    margin-left: 12px;
  
}
 
  
     </style>

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
			<div class="container">
			  <input class="form-control" type="file"  name="avatar" type="file" id="avatar" placeholder="Avatar" accept="image/*">	
				
			
		
	
  </div>
		</div>
		<div class="mb-3">
			  <input type="text" class="form-control form-control-lg inp " placeholder="Type the Username.." x-model="fileName" value="${userBean.getName()}" name="name"  id="name" placeholder="Username">
			
		</div>
		<div class="mb-3">
		
			<input name="birth-day" type="date" class="form-control form-control-lg" id="birth-day" placeholder="Password">
		</div>
		
		 <button class="btn-box theme-btn" data-bs-toggle="modal" data-bs-target="#partInfoModal1">
               Update Profile
            </button>
		
	</form>
	
</div>



<%@include file="/WEB-INF/comps/footer.jsp" %>