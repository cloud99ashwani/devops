pipeline {
    environment {
        envVar1 = 'environment variable1'
        envVar2 = 'environment variable2'
        envVar3 = 'environment variable3'
    }
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo ${envVar1}'
                echo "${env.BRANCH_NAME}"
            }
        }
        stage('Test') {
            steps {
                sh 'echo ${envVar2}'
                echo "${env.WORKSPACE}"
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo ${envVar3}'
                echo "${env.BUILD_NUMBER}"
            }
        }
    }
}
