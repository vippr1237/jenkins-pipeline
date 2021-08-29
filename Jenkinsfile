pipeline {

    agent any

    environment {
        PASS = credentials('registry-pass')
    }
    stages {
	
	stage('Build'){
	    steps{
		sh """
		    ./jenkins/build/mvn.sh -B DskipTests clean install package
	 	    ./jenkins/build/build.sh
		   """
	    }
	}
        stage('Test'){
	    steps{
	     sh './jenkins/test/mvn.sh mvn test'
	    }
	}
	stage('Push'){
	    steps{
	     sh './jenkins/push/push.sh'
	    }
	}
	stage('Deploy'){
	    steps{
	     sh './jenkins/deploy/deploy.sh'
	    }
	}
    }
}

