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
            emailext
                subject: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' -  Build"
                body: "<p>STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p> <p>Check console output at &QUOT;<a href='${env.BUILD_URL}'>${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>&QUOT;</p>"
                to: 'test@example.com'
        }
        success {
            echo 'I am running because the job ran successfully'
             emailext
                subject: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' - Build Success"
                body: "<p>STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p> <p>Check console output at &QUOT;<a href='${env.BUILD_URL}'>${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>&QUOT;</p>"
                to: 'test@example.com'
        }
        unstable {
            echo 'Gear up ! The build is unstable. Try fix it'
             emailext
                subject: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' - Build Unstable"
                body: "<p>STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p> <p>Check console output at &QUOT;<a href='${env.BUILD_URL}'>${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>&QUOT;</p>"
                to: 'test@example.com'
        }
        failure {
            echo 'OMG ! The build failed'
             emailext
                subject: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' - Build Failure"
                body: "<p>STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p> <p>Check console output at &QUOT;<a href='${env.BUILD_URL}'>${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>&QUOT;</p>"
                to: 'test@example.com'
        }
    }
}
