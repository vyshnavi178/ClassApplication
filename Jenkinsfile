pipeline {
agent any
triggers {
	//Execute  every five minute
cron('H/5 * * * *')
}

options{
// only keeps the last 10 builds of this pipelone
buildDiscarder(logRotator(numToKeepStr: '10'))
  discardConcurrentBuilds()
//disableConcurrentBuilds

// adds timestamps to build logs
timestamps()
}
tools
{
maven 'Maven-3.5.4'
}
stages {
stage ('build') {

steps {	  
sh 'echo "compile the project"'
sh ''' mvn compile '''
}		
}
}
post {
always {
	echo “Pipeline finished”
}
}
}
