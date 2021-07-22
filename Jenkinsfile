pipeline{
    agent any
    environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('jenkins-sa')  
    }
    tools {
        terraform 'Terraform'
    }

    stages{
        stage('Git Checkout'){
            steps{
                git credentialsId: 'git-user', url: 'https://github.com/ramzez4815/demo2-gcp.git'
            }
        }
        stage('Terraform Init'){
            steps{
                sh label: '', script: "terraform init";
            }
        }
        stage('Terraform ${Option}'){
            steps{
                sh label: '', script: "terraform ${Option} --auto-approve"
                script{
                    if(Option == "apply"){
                        build job: 'demo2-2'
                    }
                }
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}