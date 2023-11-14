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
                subject: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' -  Build",
                body: "<p>Check console output at &QUOT;<a href='${env.BUILD_URL}'>${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>&QUOT;</p>",
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
