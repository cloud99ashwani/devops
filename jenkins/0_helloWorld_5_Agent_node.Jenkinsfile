// Declarative
pipeline {
    agent { docker { image 'node:13.8' } }
    stages {
        stage('Build') {
            steps {
                sh 'node --version'
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
            echo 'i run when you are successfull'
        }
        failure {
            echo 'i run when you are fail'
        }
    }
}