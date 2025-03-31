pipeline {
    agent any
    stages {
        stage("checkout") {
            steps {
                checkout scm            
	          }
       }
	    stage("Prepare Environment") {
            steps {
                // Copy .env from your local Windows path to the Jenkins workspace
                sh "cp /mnt/d/Node\\ JS/NestJs/user-crud-linux/.env ./"
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
    }
}
