pipeline {
    agent any

    stages {

        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                bat 'terraform fmt -check'
                bat 'terraform validate'
            }
        }

        stage('Terraform Plan (Pull Request)') {
            when {
                not {
                    branch 'main'
                }
            }
            steps {
                bat 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply (After Merge)') {
            when {
                branch 'main'
            }
            steps {
                bat 'terraform apply -auto-approve'
            }
        }
    }
}
