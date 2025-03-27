pipeline {
    agent any
    stages {
        
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ChhaviPriyaTanwar/user-crud-linux.git'
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
