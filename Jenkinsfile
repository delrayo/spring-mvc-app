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
				 sh label: '', script: 'cd /vagrant'
				 sh label: '', script: 'sed $\'s/\\r$//\' ./gradlew > ./gradlew.Unix'
				 sh label: '', script: './gradlew.Unix build'
				 sh label: '', script: 'docker-compose up'
				}
			}
        
        }
    }