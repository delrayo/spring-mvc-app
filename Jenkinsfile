pipeline {
    agent any

    stages {
        stage('Deploy VM') {
            steps {
				echo 'VM is starting...'
                bat label: '', script: 'vagrant up'
            }
        }
        
        }
    }