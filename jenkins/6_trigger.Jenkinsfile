pipeline {
    agent any
    triggers {
        cron('H/15 * * * *')
    }
    stages {
        stage('Build Trigger') {
            steps {
                echo 'Hello World'
            }
        }
    }
}
