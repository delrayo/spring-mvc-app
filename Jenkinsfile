pipeline {
    agent any

    stages {
        stage('Deploy VM') {
            steps {
				echo 'VM is starting...'
                bat label: '', script: 'vagrant up'
				bat label: '', script: 'vagrant ssh'
            }
        }
		stage('SSH'){
			steps{
				 bat label: '', script: 'cd /vagrant'
				 bat label: '', script: 'sed $\'s/\\r$//\' ./gradlew > ./gradlew.Unix'
				 bat label: '', script: './gradlew.Unix build'
				 bat label: '', script: 'docker-compose up'
				}
			}
        
        }
    }