pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/YOUR_GITHUB_USERNAME/ci-cd-web-app.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t static-web:latest .'
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 80:80 --name static-web static-web:latest'
                }
            }
        }
    }
}
