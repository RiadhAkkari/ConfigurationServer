pipeline {
    agent any

    stages {
        stage('Setup Environment') {
            steps {
                script {
                    // Set up your environment here if necessary
                }
            }
        }

        stage('Install Nginx') {
            steps {
                script {
                    sh 'ansible-playbook -i ansible/inventory/production ansible/playbooks/nginx.yml'
                }
            }
        }

        stage('Configure Nginx') {
            steps {
                script {
                    // Add any additional configuration steps if needed
                }
            }
        }

        stage('Install Java and Grails') {
            steps {
                script {
                    sh 'ansible-playbook -i ansible/inventory/production ansible/playbooks/install-java-grails.yml'
                }
            }
        }

        stage('Build and Deploy App') {
            steps {
                script {
                    sh 'ansible-playbook -i ansible/inventory/production ansible/playbooks/deploy-app.yml'
                }
            }
        }
    }

    post {
        always {
            // Clean up or perform any necessary post-build tasks
        }
    }
}
