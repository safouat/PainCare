pipeline {
    agent any
    stages {
        stage("Build artefact") {
            steps {
                script {
                    sh "mvn clean install"
                }
            }
        }
        stage("Build images") {
            steps {
                script {
                    sh "docker compose build"
                }
            }
        }
        stage("Test") {
            steps {
                script {
                    echo "This is the test stage"
                }
            }
        }
        stage("Deploy") {
            steps {
                script {
                    sh "docker compose up"
                }
            }
        }
    }
}
