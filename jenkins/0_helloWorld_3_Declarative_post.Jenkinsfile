// Declarative 

pipeline {
    agent none
    stages {
        stage('Build') {
            steps {
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
            emailext subject: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' -  Build" ,
                body: "Check console output at ${env.BUILD_URL}console" ,
                to: 'test@example.com'
        }
        success {
            echo 'i run when you are success'
        }
        failure {
            echo 'i run when you are fail'
        }
    }
}