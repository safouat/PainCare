<c:set var="userBean" value="${sessionScope.user}" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PainCare - Home Page</title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/main.css" rel="stylesheet">

    <c:if test="${not empty css_links}">
        <c:forEach var="cssLink" items="${css_links}">
            <link rel="stylesheet" href="${cssLink}">
        </c:forEach>
    </c:if>
</head>
<body>
    
