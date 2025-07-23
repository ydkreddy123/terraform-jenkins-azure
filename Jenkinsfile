pipeline {
    agent any
    stages {
        stage('Git checkout') {
            steps {
                git branch: 'main' , url: 'https://github.com/ydkreddy123/terraform-jenkins-azure.git'
            }
        }
        stage ('terraform init') {
        steps {
            sh 'terraform init'
            }
        }
        stage ('terraform plan'){
        steps {
            sh 'terraform plan'
            } 
        }
        stage ('terraform apply'){
        steps {
            sh 'terraform apply -auto-approve'
            }
        }
    }
}