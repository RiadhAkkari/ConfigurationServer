pipeline {
    agent any

    stages {
        stage('Récupérer les fichiers Ansible') {
            steps {
                git branch: 'main', url: 'https://github.com/RiadhAkkari/ConfigurationServer.git'
            }
        }

        stage('Install Nginx') {
            steps {
                script {
                    sh 'ansible-playbook -i ansible/inventory/production ansible/playbooks/nginx.yml'
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

        /*stage('Build and Deploy App') {
            steps {
                script {
                    sh 'ansible-playbook -i ansible/inventory/production ansible/playbooks/deploy-app.yml'
                }
            }
        }*/
    }

}
