pipeline {
    agent any
    stages {
        stage('build step') {
            steps {
                echo 'Build stage is running'
            }
        }
    }
    post {
        always {
            echo 'i m awesome. i run always'
            emailext subject: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' -  Build" ,
                body: "Check console output at http://${env.BUILD_URL}${env.JOB_NAME}[${env.BUILD_NUMBER}]" ,
                to: 'test@example.com'
        }
        success {
            echo 'I am running because the job ran successfully'
        }
        unstable {
            echo 'Gear up ! The build is unstable. Try fix it'
        }
        failure {
            echo 'OMG ! The build failed'
        }
    }
}
