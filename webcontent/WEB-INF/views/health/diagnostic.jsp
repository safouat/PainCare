<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="activePage" value="diagnostic" />

<%@include file="/WEB-INF/comps/dashboard/header.jsp" %>

<div class="container h-100 d-flex flex-column justify-content-center align-items-center">
    <div id="diagnstic-notaion" class="active">
        <img src="assets/images/diagnostic.png" />
        <p class="my-3">Do you suffer from painful period ? Take this questionnaire to find out your risk for endometriosis.</p>
        <div class="more-btn">
            <a href="javascript:void;">GO</a>
        </div>
    </div>
    <c:if test="${empty diagnosticBean}">
        <form class="d-flex flex-column h-100 w-100" id="diagnostic-form" action="" method="POST">
            <div id="diagnostic-panels" class="flex-grow-1 d-flex justify-content-center align-items-center">
                <c:forEach var="item" items="${questionsBank}" varStatus="loop">
                    <div class="diagnostic-panel <c:if test="${loop.index != 0}">d-none</c:if>">
                        <div class="mb-3">
                            <p>${item[0]}</p>
                        </div>
                        <c:forEach var="subItem" items="${item[1]}" varStatus="loop2">
                            <div class="mb-3">
                                <input type="radio" name="answer-${loop.index}" <c:if test="${loop.index == 0}">required</c:if> data-value="${loop2.index}" id="Q${loop.index}.${loop2.index}">
                                <lable for="Q${loop.index}.${loop2.index}">${subItem}</lable>
                            </div>
                        </c:forEach>
                    </div>
                </c:forEach>
            </div>
            <input type="hidden" name="answers" id="answers" />
            <div class="d-flex justify-content-end w-100 p-3">
                <button id="submit-btn" class="btn btn-primary">Next</button>
            </div>
        </form>
    </c:if>
    <c:if test="${not empty diagnosticBean}">
        <div class="mb-3">
            <p>Risk Level : ${diagnosticBean.calcResult()}</p>
        </div>
        <c:forEach var="item" items="${questionsBank}" varStatus="loop">
            <div class="mb-3">
                <p>Question : ${item[0]}</p>
            </div>
            <div class="mb-3">
                <p>Answer : ${item[1][diagnosticBean.getAnswers().get(loop.index)]}</p>
            </div>
        </c:forEach>
        <a class="mb-3" href="profile">
            <button class="btn btn-primary">Go Back Dashboard</button>
        </a>
    </c:if>
</div>

<script>
    const form = document.getElementById("diagnostic-form");
    const panels = document.querySelectorAll(".diagnostic-panel");
    const inputs = document.querySelectorAll("#diagnostic-panels input[type='radio']");
    const button = document.getElementById("submit-btn");
    let active_panel = 0;

    form.addEventListener("submit", e => {
        e.preventDefault();

        if(active_panel + 1 < panels.length) {
            panels[active_panel].classList.add("d-none");
            panels[active_panel].querySelectorAll("input[type='radio']").forEach(input => {
                input.removeAttribute("required");
            });

            panels[active_panel + 1].classList.remove("d-none");
            panels[active_panel + 1].querySelectorAll("input[type='radio']").forEach(input => {
                input.setAttribute("required", "true");
            });

            active_panel++;

            if(active_panel + 1 == panels.length) button.textContent = "sumbit";
        } else submitAnswers();
    });

    function submitAnswers() {
        const answers = [];

        for (let i = 0; i < inputs.length; i++) {
            if (inputs[i].checked) {
                answers.push(inputs[i].getAttribute("data-value"));
            }
        }

        const answersString = answers.join(",");

        document.getElementById("answers").value = answersString;

        document.getElementById("diagnostic-form").submit();
    }
</script>

<%@include file="/WEB-INF/comps/dashboard/footer.jsp" %>