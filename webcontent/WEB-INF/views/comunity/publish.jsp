<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="activePage" value="blogs" />
<c:set var="css_links" value="${['https://cdn.quilljs.com/1.3.6/quill.snow.css', 'assets/css/blog-form.css']}" />

<%@include file="/WEB-INF/comps/dashboard/header.jsp" %>

<div class="app-form-cnt container h-100 d-flex flex-column justify-content-center">

    <div class="text-center mb-3">
        <h1 class="h3">
            <c:if test="${empty blog}"> Publish Blog </c:if>
            <c:if test="${not empty blog}"> Update Blog </c:if>
        </h1>
        <c:if test="${not empty form_error}">
            <div class="alert alert-danger" role="alert">
                <p class="text-sm text-danger">${form_error}</p>
            </div>
        </c:if>
    </div>


    <form class="d-flex flex-column align-items-center" action="" method="POST" enctype="multipart/form-data">

        <div class="mb-3">

            <input <c:if test="${not empty blog}"> value="${blog.getTitle()}" </c:if> name="title" type="text"
            class="form-control control-lg" id="title" placeholder="Title" class="form-control form-control-lg inp "
            >


        </div>
        <div class="mb-3">
            <input name="description" id="descriptioninput" type="hidden">
            <div name="description" class="form-control" id="description" placeholder="Description">
                <c:if test="${not empty blog}">${blog.getDescription()}</c:if>
            </div>


        </div>
        <div class="mb-3">
            <label class="custum-file-upload" for="image">
                <div class="icon" id="imagePreview">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="" viewBox="0 0 24 24">
                        <g stroke-width="0" id="SVGRepo_bgCarrier"></g>
                        <g stroke-linejoin="round" stroke-linecap="round" id="SVGRepo_tracerCarrier"></g>
                        <g id="SVGRepo_iconCarrier">
                            <path fill=""
                                d="M10 1C9.73478 1 9.48043 1.10536 9.29289 1.29289L3.29289 7.29289C3.10536 7.48043 3 7.73478 3 8V20C3 21.6569 4.34315 23 6 23H7C7.55228 23 8 22.5523 8 22C8 21.4477 7.55228 21 7 21H6C5.44772 21 5 20.5523 5 20V9H10C10.5523 9 11 8.55228 11 8V3H18C18.5523 3 19 3.44772 19 4V9C19 9.55228 19.4477 10 20 10C20.5523 10 21 9.55228 21 9V4C21 2.34315 19.6569 1 18 1H10ZM9 7H6.41421L9 4.41421V7ZM14 15.5C14 14.1193 15.1193 13 16.5 13C17.8807 13 19 14.1193 19 15.5V16V17H20C21.1046 17 22 17.8954 22 19C22 20.1046 21.1046 21 20 21H13C11.8954 21 11 20.1046 11 19C11 17.8954 11.8954 17 13 17H14V16V15.5ZM16.5 11C14.142 11 12.2076 12.8136 12.0156 15.122C10.2825 15.5606 9 17.1305 9 19C9 21.2091 10.7909 23 13 23H20C22.2091 23 24 21.2091 24 19C24 17.1305 22.7175 15.5606 20.9844 15.122C20.7924 12.8136 18.858 11 16.5 11Z"
                                clip-rule="evenodd" fill-rule="evenodd"></path>
                        </g>
                    </svg>
                </div>
                <div class="text">
                    <span>Upload Blog Image</span>
                </div>
                <input name="image" type="file" class="form-control" id="image" placeholder="Image" accept="image/*" onchange="previewImage(this)">
                
            </label>
        </div>


        <div class="d-flex justify-content-center"> <!-- Center the button -->
            <button class="btn-box theme-btn" data-bs-toggle="modal" data-bs-target="#partInfoModal1"
                type="submit">
                Publish
            </button>
        </div>
    </form>

</div>


<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        var quill = new Quill('#description', {
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

        // Use the 'text-change' event to update the hidden input when the content changes
        quill.on('text-change', function () {
            document.getElementById('descriptioninput').value = quill.root.innerHTML;
        });
    });
    function previewImage(input) {
        var preview = document.getElementById('imagePreview');
        var file = input.files[0];
        var reader = new FileReader();

        reader.onloadend = function () {
            // Create an image element
            var img = document.createElement('img');
            img.src = reader.result;
            img.alt = 'Image Preview';
            img.style.maxWidth = '100%';
            img.style.height = '100px';

            // Clear previous content and append the new image
            preview.innerHTML = '';
            preview.appendChild(img);
        };

        if (file) {
            reader.readAsDataURL(file);
        } else {
            // If no file is selected, clear the preview
            preview.innerHTML = '';
        }
    }
</script>

<%@include file="/WEB-INF/comps/dashboard/footer.jsp" %>