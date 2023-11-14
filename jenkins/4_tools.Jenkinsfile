pipeline {
    agent any
    environment {
        DOCKER_HOME = tool 'DOCKER_PATH'
        MAVEN_HOME = tool 'MAVEN_PATH'
        PATH = "DOCKER_HOME/bin:$MAVEN_HOME/bin:$PATH"
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
