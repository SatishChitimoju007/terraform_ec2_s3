pipeline {
    
    environment {
        AWS_ACCESS_KEY_ID = credentials("AWS_ACCESS_KEY_ID")
        AWS_SECRET_ACCESS_KEY = credentials("AWS_SECRET_ACCESS_KEY")
    }
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git_credentials', url: 'https://github.com/SatishChitimoju007/terraform_ec2_s3.git']])
            }
        }
        
        stage ("init") {
            steps {
                sh ("terraform init -reconfigure")
            }
        }
        stage ("plan") {
            steps {
                sh ("terraform plan")
            }
        }
        stage ("action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve')
            }
        }
    }
}
