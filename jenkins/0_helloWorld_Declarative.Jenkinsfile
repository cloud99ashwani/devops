pipeline {
    agent none
    stages {
        stage('Build') {
            steps {
                echo 'Hello World!!'
            }
        }
        stage('Deploy') {
            when {
                beforeInput true
                branch 'production'
            }
            input {
                message 'Deploy to production?'
                id 'simple-input'
            }
            steps {
                echo 'Deploying'
            }
        }
    }
}
