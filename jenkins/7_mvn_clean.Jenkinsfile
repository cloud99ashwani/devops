pipeline {
    agent any
    environment {
        DOCKER_HOME = tool 'DOCKER_PATH'
        MAVEN_HOME = tool 'MAVEN_PATH'
        PATH = "DOCKER_HOME/bin:$MAVEN_HOME/bin:$PATH"
    }
    stages {
        stage('Checkout - Load Tools') {
            steps {
                sh 'mvn --version'
                sh 'docker version'
            }
        }

        stage('compile') {
            steps {
                sh 'mvn clean compile -f jenkins/pom.xml'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('package') {
            steps {
                sh 'mvn package'
            }
        }
    }
}
