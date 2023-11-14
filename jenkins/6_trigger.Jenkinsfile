pipeline {
    agent any
    triggers {
        cron('H/1 * * * *')
    }
    stages {
        stage('Build Trigger') {
            steps {
                echo 'Hello World'
            }
        }
    }
}