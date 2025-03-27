pipeline {
    agent any
    stages {
        
        stage('Checkout') {
            steps {
                sh 'ssh-keyscan github.com >> ~/.ssh/known_hosts'
                checkout scm
            }
        }

        stage('Test') {
            steps {
                sh 'npm install'
                sh 'npm test'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
    }
}
