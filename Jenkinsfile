pipeline {
    agent any  
    stages {
        stage("checkout") {
            steps {
                checkout scm            
	        }
        }        
        stage("Install Dependencies") {
            steps {
                sh "apt-get update"
                sh "apt-get install -y npm"
            }
        }
        stage("Tests") {
            steps {
                sh "npm install"  // Install project dependencies
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
