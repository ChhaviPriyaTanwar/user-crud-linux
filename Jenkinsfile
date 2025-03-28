pipeline {
    agent {
	    docker {
            image 'node:20'
        }
    }  
    stages {
        stage("checkout") {
            steps {
                checkout scm            
	   }
       }        
        stage("Tests") {
            steps {
		sh "npm install"
		sh "npm test"
            }
        }

        stage("Build") {
            steps {
                sh 'npm run build'
            }
        }
    }
}
