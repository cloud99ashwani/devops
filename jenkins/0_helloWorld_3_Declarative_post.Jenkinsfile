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
            echo 'i m awesome. i run always'
        }
        success {
             emailext subject: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' -  Build" ,
                from: 'admin@example.com'
                body: "Check console output at ${env.BUILD_URL}console" ,
                to: 'test@example.com'
        }
        failure {
            echo 'i run when you are fail'
        }
    }
}