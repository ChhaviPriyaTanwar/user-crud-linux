pipeline {
    agent any
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
        stage("Build Image"){
            steps{
                sh 'docker build -t my-node-app:1.0 .'
            }
        }
	    stage("Run Container") {
            steps {
                // Stop and remove the container if it already exists (for re-runs)
                sh 'docker rm -f my-node-container || true'
                
                // Run the container and map it to localhost:3000
                sh 'docker run -d -p 3000:3000 --name my-node-container my-node-app:1.0'
            }
        }
    }
}
