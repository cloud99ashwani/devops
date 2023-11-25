job('job_dsl_trigger') {
    description('This is my awesome Job')

     parameters {
        stringParam('Planet', defaultValue = 'world', description = 'This is the world')
	    booleanParam('FLAG', true)
        choiceParam('OPTION', ['option 1 (default)', 'option 2', 'option 3'])
    } 

    scm {
        git('https://github.com/cloud99ashwani/devops', 'master')
    }

      triggers {
        cron('H 5 * * 7')
    }
}