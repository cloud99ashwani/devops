pipeline {
    agent any
    tools {
        maven 'MAVEN_PATH'
    }
    stages {
        stage('Load Tools') {
            steps {
                sh 'mvn -version'
            }
        }
    }
}
