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
		sh "install npm"
		sh "npm test"
            }
        }

        stage("Build") {
            steps {
                sh 'npm run build'
            }
        }
    }
}
