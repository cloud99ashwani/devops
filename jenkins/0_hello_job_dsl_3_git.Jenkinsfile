job('job_dsl_git') {
    description('This is my awesome Job')

     parameters {
        stringParam('Planet', defaultValue = 'world', description = 'This is the world')
	    booleanParam('FLAG', true)
        choiceParam('OPTION', ['option 1 (default)', 'option 2', 'option 3'])
    } 

    scm {
        git('https://github.com/cloud99ashwani/devops', 'master')
    }
}
// run below command in docker container
// git config --global user.email "cloud99.ashwani@gmail.com"
// git config --global user.name "clooud99ashwani"