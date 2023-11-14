pipeline {
    agent any
    triggers {
        cron('* * * * *')
    }
    stages {
        stage('Build Trigger') {
            steps {
                echo 'Hello World'
            }
        }
    }
}