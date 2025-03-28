pipeline {
  agent { label 'master' }

  tools { nodejs "nodejs" }

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
