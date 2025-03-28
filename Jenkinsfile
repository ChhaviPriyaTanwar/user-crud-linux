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
		sh "apt install npm"
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
