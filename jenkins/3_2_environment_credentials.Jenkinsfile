pipeline {
    agent any
    environment {
        MY_CRED = credentials('MY_SECRET')
    }
    stages {
        stage('Load Credentials') {
            steps {
                echo "Username is $MY_CRED_USR"
                echo "Password is $MY_CRED_PSW"
            }
        }
    }
}
