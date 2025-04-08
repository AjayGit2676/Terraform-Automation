pipeline {
    agent any

    stages {
        stage('Cloning github repo') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/AjayGit2676/Terraform-Automation.git']])
            }
        }
    
         stage ("terraform init") {
             steps {
                sh ("terraform init -reconfigure") 
             }
         }
        

        stage ("Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
}
