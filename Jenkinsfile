pipeline {
    agent any
    stages {
        stage('Git checkout') {
            steps {
                git branch: 'main' , url: 'https://github.com/ydkreddy123/terraform-jenkins-azure.git'
            }
        }
    stage ('terraform init'){
        stage {
            sh 'terraform init'
        }
    }
    stage ('terraform plan'){
        stage {
            sh 'terraform plan'
        }
    }
    stage ('terraform apply'){
        stage {
            sh 'terraform apply -auto-approve'
        }
    }
}