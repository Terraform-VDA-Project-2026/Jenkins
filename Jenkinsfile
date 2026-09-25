pipeline {
    agent any

    stages {
        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                bat 'terraform plan -var="sub_id=252026ba-6735-4965-9bbf-6bad9c701532"'
            }
        }

        stage('Terraform Apply') {
            steps {
                bat 'terraform apply -auto-approve -var="sub_id=252026ba-6735-4965-9bbf-6bad9c701532"'
            }
        }
    }
}