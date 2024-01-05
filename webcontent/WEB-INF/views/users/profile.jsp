<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="/WEB-INF/comps/header.jsp" %>

<div class="container mt-3">
    <div class="row">
        <a href="diagnostic" class="col p-3 m-3 bg-primary-subtle border border-primary rounded cursor-pointer shadow-sm">
            <h6>Diagnostic test</h6>
            <p>Discover your potential endometriosis diagnostic</p>
        </a>
        <a href="track_pain" class="col p-3 m-3 bg-danger-subtle border border-danger rounded cursor-pointer shadow-sm">
            <h6>Track pain</h6>
            <p>Explore your pain journey</p>
        </a>
        <a href="blogs" class="col p-3 m-3 bg-success-subtle border border-success rounded cursor-pointer shadow-sm">
            <h6>Browse blogs</h6>
            <p>Expand your knowlege by browsing some health blogs</p>
        </a>
    </div>
    <div class="row">
        <div class="col">
            <c:if test="${not empty diagnosticBean}">
                <div class="d-flex align-items-center rounded border border-danger p-3 bg-white shadow-sm">
                    <div class="flex-grow-1">
                        <h6>Last score</h6>
                        <p>Update your score regulary</p>
                    </div>
                    <bold class="mx-3">${diagnosticBean.calcResult()}</bold>
                </div>
            </c:if>
            <canvas class="mt-3" id="pain-level-chart"></canvas>
        </div>
        <div class="col">
            <div class="row">
                <div class="col-6">
                    <canvas id="locations-chart"></canvas>
                </div>
                <div class="col-6">
                    <canvas id="symptoms-chart"></canvas>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <canvas id="worse-pain-chart"></canvas>
                </div>
                <div class="col-6">
                    <canvas id="feelings-chart"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.1/dist/chart.umd.min.js"></script>
<script>
    const doughnutChartConfig = (dataObject, title = "") => ({
        type: 'doughnut',
        data: {
            labels: Object.keys(dataObject),
            datasets: [
                {
                    label: '  ',
                    data: Object.values(dataObject)
                }
            ]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'left',
                },
                title: {
                    display: true,
                    text: title
                }
            }
        },
    });

    // locations
    const locationsObject = JSON.parse(`${locationsObject}`);

    new Chart(document.getElementById("locations-chart"), doughnutChartConfig(locationsObject, "Pain Locations"));

    // symptoms
    const symptomsObject = JSON.parse(`${symptomsObject}`);

    new Chart(document.getElementById("symptoms-chart"), doughnutChartConfig(symptomsObject, "Symptoms"));

    // pain worse
    const worsePainObject = JSON.parse(`${worsePainObject}`);

    new Chart(document.getElementById("worse-pain-chart"), doughnutChartConfig(worsePainObject, "What Makes Pain Worse"));

    // symptoms
    const feelingsObject = JSON.parse(`${feelingsObject}`);

    new Chart(document.getElementById("feelings-chart"), doughnutChartConfig(feelingsObject, "Feelings"));
    
    // pain evolution
    const datapoints = JSON.parse(`${painArray}`).reverse();
    const data = {
        labels: new Array(datapoints.length).fill(""),
        datasets: [
            {
                label: 'Pain Evolustion',
                data: datapoints,
                fill: false,
                cubicInterpolationMode: 'monotone',
                tension: 0.4
            }
        ]
    };
    new Chart(document.getElementById('pain-level-chart'), {
        type: 'line',
        data: data,
        options: {
            responsive: true,
            interaction: {
                intersect: false,
            },
            scales: {
                x: {
                    display: true,
                    title: {
                        display: true
                    }
                },
                y: {
                    display: true,
                    title: {
                        display: true,
                        text: 'Pain'
                    },
                    suggestedMin: 0,
                    suggestedMax: 10
                }
            }
        },
    })
</script>

<%@include file="/WEB-INF/comps/footer.jsp" %>