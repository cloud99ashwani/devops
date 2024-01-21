// Declarative
pipeline {
    agent { docker { image 'maven:3.6.3-openjdk-17' } }
    stages {
        stage('Build') {
            steps {
                sh 'mvn --version'
                echo 'Build!'
            }
        }
        stage('Test') {
            steps {
                echo 'Test!'
            }
        }
        stage('Integration Test') {
            steps {
                echo 'Integration Test!'
            }
        }
    }

    post {
        always {
            echo 'i m awesome. i run always'
        }
        success {
             emailext subject: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' -  Build" ,
                body: "Check console output at ${env.BUILD_URL}console" ,
                to: 'test@example.com'
        }
        failure {
            echo 'i run when you are fail'
        }
    }
}