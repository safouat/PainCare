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
                position: 'top',
            },
            title: {
                display: false,
                text: title
            }
        }
    },
});

// locations
new Chart(document.getElementById("locations-chart"), doughnutChartConfig(locationsObject, "Pain Locations"));

// symptoms
new Chart(document.getElementById("symptoms-chart"), doughnutChartConfig(symptomsObject, "Symptoms"));

// pain worse
new Chart(document.getElementById("worse-pain-chart"), doughnutChartConfig(worsePainObject, "What Makes Pain Worse"));

// symptoms
new Chart(document.getElementById("feelings-chart"), doughnutChartConfig(feelingsObject, "Feelings"));

const data = {
    labels: dates.map(d => new Date(d).toLocaleDateString()),
    datasets: [
        {
            label: 'Pain Evolustion',
            data: datapoints,
            fill: false,
            cubicInterpolationMode: 'monotone',
            tension: 0.4,
            borderColor: "#fa859a"
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