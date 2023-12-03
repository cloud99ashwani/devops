pipeline {
    agent any
    stages {
        stage('Build'){
            steps {
                echo('build the project')
            }
        }
        stage('Production Deployment Validation') {
            steps {
                script {
                    // Variables for input
                    def approver
                    def passcode
                    // wait for input user till default in minutes
                    // timeout(time: 20, unit: 'SECONDS') {
                    timeout(1) {
                        retry(count: 2) {
                            // Get the input
                            def userInput = input(
                                    id: 'userInput', message: 'Enter Approval Details?',
                                    parameters: [
                                            string(defaultValue: 'None',
                                                    description: 'Name of the Approver',
                                                    name: 'name'),
                                            string(defaultValue: 'None',
                                                    description: 'Passcode for run the build',
                                                    name: 'passcode'),
                                    ])

                            // Save to variables. Default to empty string if not found.
                            approver = userInput.name?:''
                            passcode = userInput.passcode?:''
                            if(passcode.indexOf(" ") > 0){
                                error 'Program failed, please read logs...'
                            }
                        }
                    }
                    // Echo to console
                    echo("Approver: ${approver}")
                    echo("Passcode: ${passcode}")
                }
            }
        }
        stage('Deploy on Prod') {
            steps {
                echo 'Complete successfully'
            }
        }
    }
}