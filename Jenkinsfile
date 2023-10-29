pipeline {
    agent any
    
    environment {
        DOCKER_REGISTRY = 'fahadkamran2001' // Update with your Docker Hub username
        FRONTEND_IMAGE = "${DOCKER_REGISTRY}/ca4-server:latest"
        BACKEND_IMAGE = "${DOCKER_REGISTRY}/ca4-db:latestt"
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build and Push Frontend Image') {
            steps {
                script {
                    // Check if the frontend image exists on Docker Hub
                    def frontendExists = sh(script: "docker pull ${FRONTEND_IMAGE}", returnStatus: true) == 0

                    if (!frontendExists) {
                        // Build and push the frontend image
                        sh "docker build -t ${FRONTEND_IMAGE} frontend-directory"
                        sh "docker push ${FRONTEND_IMAGE}"
                    } else {
                        echo "Frontend image already exists on Docker Hub."
                    }
                }
            }
        }
        
        stage('Build and Push Backend Image') {
            steps {
                script {
                    // Check if the backend image exists on Docker Hub
                    def backendExists = sh(script: "docker pull ${BACKEND_IMAGE}", returnStatus: true) == 0

                    if (!backendExists) {
                        // Build and push the backend image
                        sh "docker build -t ${BACKEND_IMAGE} backend-directory"
                        sh "docker push ${BACKEND_IMAGE}"
                    } else {
                        echo "Backend image already exists on Docker Hub."
                    }
                }
            }
        }
        
        stage('Execute Docker Compose') {
            steps {
                sh "docker-compose up -d"
            }
        }
        
        stage('Verify Web Service Availability') {
            steps {
                retry(10) {
                    // Use a tool like curl or wait-for-it to check web service availability
                    // Replace this with your own validation logic
                    sh "curl -s -o /dev/null http://localhost:8080"
                }
            }
        }
    }
    
    post {
        always {
            // Cleanup and other post-build tasks can be added here
            sh "docker-compose down"
        }
    }
}
