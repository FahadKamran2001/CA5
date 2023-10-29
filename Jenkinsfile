pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Execute Docker Compose
                    sh 'docker-compose -f docker-compose.yml up -d'
                }
            }
        }
    }
}
