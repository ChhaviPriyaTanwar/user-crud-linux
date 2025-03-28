pipeline {
  agent any
  stages {
    stage('Test npm') {
      steps {
        sh 'echo "PATH: $PATH"'
        sh 'npm --version'
      }
    }
  }
}
