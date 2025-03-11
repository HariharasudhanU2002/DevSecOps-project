pipeline {
    agent any
    stages {
        stage('Checkout git') {
            steps {
               checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'hari', url: 'https://github.com/HariharasudhanU2002/DevSecOps.git']])
            }
        }
        stage('Build') {
            tools {
                jdk 'java-17'
            }
            steps {
                sh './mvn clean build'
            }
        }        
    }    
}    

    
