pipeline {
    agent any

    stages {
        
		stage('SSH'){
			steps{
				echo 'VM is starting...'
				powershell label: '', script: 'vagrant up'
				powershell label: '', script: 'vagrant ssh'
				echo '+-+-+-+++-+-+-+-+-+- just testing6...'
				 powershell label: '', script: 'cd /vagrant'
				 powershell label: '', script: 'sed $\'s/\\r$//\' ./gradlew > ./gradlew.Unix'
				 powershell label: '', script: './gradlew.Unix build'
				 powershell label: '', script: 'docker-compose up' 
				}
			}
        
        }
    }