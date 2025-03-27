pipeline {
    agent {
        docker {
            image 'node:10.11.0-alpine'
            // Optional: Add args if needed, e.g., args '-v /tmp:/tmp'
        }
    }
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
