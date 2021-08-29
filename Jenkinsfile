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
	    post {
		success {
		    archiveArtifacts artifact: 'build/libs/**/*.jar', fingerprint: true
		}	
	    }
	}
        stage('Test'){
	    steps{
	     sh './jenkins/test/mvn.sh mvn test'
	    }
            post {
                always {
                    junit 'devops_demo/target/surefire-reports/*.xml'
                }
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

