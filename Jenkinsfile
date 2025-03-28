pipeline {
  agent { label 'main' }
  stages {
    stage('Test npm') {
      steps {
        sh """
          npm --version
        """
      }
    }
  }
}
