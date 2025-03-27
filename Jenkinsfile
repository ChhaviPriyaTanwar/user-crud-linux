pipeline {
    agent any  
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ChhaviPriyaTanwar/user-crud-linux.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
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
