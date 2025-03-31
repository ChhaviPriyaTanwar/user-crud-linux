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
                // PowerShell command to copy .env file
                powershell "Copy-Item -Path 'D:\\Node JS\\NestJs\\user-crud-linux\\.env' -Destination '.'"
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
