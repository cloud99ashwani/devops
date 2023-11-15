pipeline {
    agent any
    environment {
        DIR = 'jenkins/project'
        POM = "${DIR}/pom.xml"
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
                sh "mvn clean compile -f ${POM}"
            }
        }

        stage('Test') {
            steps {
                sh "mvn test -f ${POM}"
            }
        }

        stage('package') {
            steps {
                sh "mvn package -DskipTests -f ${POM}"
            }
        }

        stage('build docker image') {
            steps {
                // docker build . -t cloud99ashwani/jenkins-hello-world:dev
                sh 'pwd'
                script {
                    dockerImage =  docker.build('cloud99ashwani/jenkins-hello-world:dev', "-f ${DIR}/Dockerfile")
                }
            }
        }

        stage('push docker image') {
            steps {
                // docker push
                script {
                    docker.withRegistry('', 'dockerhub') {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
