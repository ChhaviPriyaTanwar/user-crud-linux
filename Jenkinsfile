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
    }
}
