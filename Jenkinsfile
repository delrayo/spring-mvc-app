pipeline {
    agent any

    stages {
        
		stage('SSH'){
			steps{
				echo 'VM is starting...'
				powershell label: '', script: 'vagrant up'
				powershell label: '', script: 'vagrant ssh'
				 sh label: '', script: 'cd /vagrant'
				 sh label: '', script: 'sed $\'s/\\r$//\' ./gradlew > ./gradlew.Unix'
				 sh label: '', script: './gradlew.Unix build'
				 sh label: '', script: 'docker-compose up'
				}
			}
        
        }
    }