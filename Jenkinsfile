pipeline {
    agent any

    stages {
        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Terraform Destroy') {
            steps {
                bat 'terraform destroy -auto-approve'
            }
        }
    }
}
