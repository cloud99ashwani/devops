pipeline {
    agent any
    triggers {
        cron('* * * * *')

        /**
            MINUTES Minutes in one hour (0-59)
            HOURS Hours in one day (0-23)
            DAYMONTH Day in a month (1-31)
            MONTH Month in a year (1-12)
            DAYWEEK Day of the week (0-7) where 0 and 7 are sunday
            
        */
        // 5 minutes, this will do the job : */5 * * * *
        // 8h00, this will do the job : 0 8 * * *
    }
    stages {
        stage('Build Trigger') {
            steps {
                echo 'Hello World'
            }
        }
    }
}