pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ChhaviPriyaTanwar/user-crud-linux.git'
            }
        }
        stage('Build and Test') {
            steps {
                script {
                    sh 'docker-compose down'
                    sh 'docker-compose up --build -d'
                }
            }
        }
        stage('Run Tests') {
            steps {
                script {
                    sh 'docker exec nestjs_api npm run test'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    echo 'Deployment completed using Docker Compose'
                }
            }
        }
    }
    post {
        always {
            sh 'docker-compose down'
        }
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
