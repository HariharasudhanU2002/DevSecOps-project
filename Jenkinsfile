pipeline {
    agent any
    stages {
        stage('Checkout git') {
            steps {
               checkout scmGit(branches: [[name: params.REPO_BRANCH]], extensions: [], userRemoteConfigs: [[credentialsId: 'hari', url: params.REPO_URL]])
            }
        }
        stage('Build') {
            tools {
                jdk 'java-17'
            }
            steps {
                sh 'mvn clean package'
            }
        } 
        stage('SAST-Analysis') {
            steps {
                script {
                    def mvn = tool name: 'Maven'  
                    withSonarQubeEnv('SonarQube') { 
                    sh "${mvn}/bin/mvn clean verify sonar:sonar -Dsonar.projectKey=DevSecOps-project"
                    }    
                }        
            }
        }
    }   
}    

    
