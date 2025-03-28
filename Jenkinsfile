pipeline {
    agent any
    stages {
        stage("checkout") {
            steps {
                checkout scm            
	   }
       }
       stage("Install Node.js and npm") {
            steps {
                sh "apt-get update"
                sh "apt-get install -y nodejs npm"  // Install both Node.js and npm
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
