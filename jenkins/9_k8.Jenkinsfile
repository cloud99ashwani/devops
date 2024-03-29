pipeline {
    agent any
    parameters {
        choice(name: 'BRANCH', choices: ['dev', 'prd'], description: 'Choose env')
    }
    environment {
        DIR = 'jenkins/project'
        POM = "${DIR}/pom.xml"
        DOCKER_HOME = tool 'DOCKER_PATH'
        MAVEN_HOME = tool 'MAVEN_PATH'
        PATH = "DOCKER_HOME/bin:$MAVEN_HOME/bin:$PATH"
        currentBranch = "${params.BRANCH}"
    }
    stages {
        stage('Checkout - Load Tools') {
            when {
                expression { env.currentBranch == 'dev' }
            }
            steps {
                sh 'mvn --version'
                sh 'docker version'
            }
        }

        stage('compile') {
            when {
                expression { env.currentBranch == 'dev' }
            }
            steps {
                sh "mvn clean compile -f ${POM}"
            }
        }

        stage('Test') {
            when {
                expression { env.currentBranch == 'dev' }
            }
            steps {
                sh "mvn test -f ${POM}"
            }
        }

        stage('package') {
            when {
                expression { env.currentBranch == 'dev' }
            }
            steps {
                sh "mvn package -DskipTests -f ${POM}"
            }
        }

        stage('build docker image') {
            when {
                expression { env.currentBranch == 'dev' }
            }
            steps {
                // docker build . -t cloud99ashwani/jenkins-hello-world:dev
                sh 'pwd'
                script {
                    dockerImage =  docker.build('cloud99ashwani/jenkins-hello-world:dev', "-f ${DIR}/Dockerfile ${DIR}")
                }
            }
        }

        stage('push docker image') {
            when {
                expression { env.currentBranch == 'dev' }
            }
            steps {
                // docker push
                script {
                    docker.withRegistry('', 'docker-credentials-id') {
                        dockerImage.push()
                    }
                }
            }
        }

        stage('k8 deployment') {
            when {
                expression { env.currentBranch == 'prd' }
            }
            steps {
                kubernetesEngineDeploy projectId: 'hip-caster-410509',
                        clusterName: 'hello-world-cluster',
                        manifestPattern: "${DIR}/deployment.yaml",
                        location: 'us-central1-c',
                        credentialsId: 'd042ac41-e4e4-4347-a703-8e4193d3e1c9',
                        verifyDeployments: true
            }
        }
    }
}

// docker run --rm -p 8181:8181 cloud99ashwani/jenkins-hello-world:dev
