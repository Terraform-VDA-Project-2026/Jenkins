pipeline {
    agent any

    stages {

        stage('Terraform Init') {
            steps {
                bat 'terraform init -reconfigure'
            }
        }

        stage('Terraform Validate') {
            steps {
                bat 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            when {
                not { branch 'main' }
            }
            steps {
                bat 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            when {
                branch 'main'
            }
            steps {
                bat 'terraform apply -auto-approve'
            }
        }
    }
}