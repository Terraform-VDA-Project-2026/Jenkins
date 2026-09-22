pipeline {
    agent any

    stages {
        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Terraform apply') {
            steps {
                bat 'terraform apply -auto-approve'
            }
        }
    }
}
