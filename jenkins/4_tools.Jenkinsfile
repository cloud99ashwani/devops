pipeline {
    agent any
    tools {
        maven 'MAVEN_PATH'
        docker 'DOCKER_PATH'
    }
    stages {
        stage('Load Tools') {
            steps {
                sh 'mvn --version'
                sh 'docker version'
            }
        }
    }
}
