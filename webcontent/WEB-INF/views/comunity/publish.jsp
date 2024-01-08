<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="css_links" value="${['assets/css/form-page.css']}" />
    <style>
        .custum-file-upload {
            height: 153px;
            width: 412px;
            display: flex;
            flex-direction: column;
            align-items: space-between;
            gap: 20px;
            cursor: pointer;
            align-items: center;
            justify-content: center;
            border: 2px dashed #cacaca;
            background-color: rgba(255, 255, 255, 1);
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0px 48px 35px -48px rgba(0, 0, 0, 0.1);
        }

        .custum-file-upload .icon {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .custum-file-upload .icon svg {
            height: 80px;
            fill: rgba(75, 85, 99, 1);
        }

        .custum-file-upload .text {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .custum-file-upload .text span {
            font-weight: 400;
            color: rgba(75, 85, 99, 1);
        }

        .custum-file-upload input {
            display: none;
        }

        button.browse.btn.px-4 {
            color: #fff;
            background-color: var(--main-color);
            border-color: var(--main-color);
        }

        input#title {
            width: 411px;
            margin-left: 12px;
        }

        .ql-toolbar {
            max-width: 411px;
            /* Set your desired max-width */
            margin-left: 12px;
            /* Center the toolbar */
        }

        #description {
            height: 130px;
            width: 411px;
            margin-left: 12px;
        }

        /* Style for the file input */
        .input-file-container {
            position: relative;
            width: 100%;
            margin: 20px 0;
        }

        .input-file {
            opacity: 0;
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            cursor: pointer;
        }

        .input-file-label {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 60px;
            padding: 10px;
            background-color: #3498db;
            color: #fff;
            border-radius: 5px;
            font-family: 'Arial', sans-serif;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .input-file-label:hover {
            background-color: #2980b9;
        }

        .input-file-label:active {
            background-color: #1f679b;
        }

        /* Style for the file name display */
        .file-name {
            margin-left: 10px;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
            flex-grow: 1;
        }

        /* Style for the upload button */
        .upload-button {
            margin-top: 10px;
            padding: 10px;
            background-color: #2ecc71;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-family: 'Arial', sans-serif;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .upload-button:hover {
            background-color: #27ae60;
        }

        .upload-button:active {
            background-color: #1f8c4b;
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
    </script>



    <%@include file="/WEB-INF/comps/header.jsp" %>

        <div class="app-form-cnt container">

            <div class="text-center mb-3">
                <h1 class="h3">
                    <div>
                        <img width="100" height="100" src="assets/images/logo.png" class="logo" alt="Logo">
                    </div>

                    <c:if test="${empty blog}"> Publish Blog </c:if>
                    <c:if test="${not empty blog}"> Update Blog </c:if>
                </h1>
                <c:if test="${not empty form_error}">
                    <div class="alert alert-danger" role="alert">
                        <p class="text-sm text-danger">${form_error}</p>
                    </div>
                </c:if>
            </div>


            <form action="" method="POST" enctype="multipart/form-data">

                <div class="mb-3">

                    <input <c:if test="${not empty blog}"> value="${blog.getTitle()}" </c:if> name="title" type="text"
                    class="form-control control-lg" id="title" placeholder="Title" class="form-control form-control-lg
                    inp "
                    >


                </div>
                <div class="mb-3">
                    <input name="description" id="descriptioninput" type="hidden">
                    <div name="description" class="form-control" id="description" placeholder="Description">
                        <c:if test="${not empty blog}">${blog.getDescription()}</c:if>
                    </div>


                </div>
                <div class="mb-3">
                    <div class="container">
                        <label class="custum-file-upload" for="image">
                            <div class="icon">
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
                                <span>Upload blog Image</span>
                            </div>
                            <input name="image" type="file" class="form-control" id="image" placeholder="Image"
                                accept="image/*">

                        </label>




                    </div>

                </div>


                <div class="d-flex justify-content-center"> <!-- Center the button -->
                    <button class="btn-box theme-btn" data-bs-toggle="modal" data-bs-target="#partInfoModal1"
                        type="submit">
                        Publish
                    </button>
                </div>
            </form>

        </div>

<%@include file="/WEB-INF/comps/footer.jsp" %>