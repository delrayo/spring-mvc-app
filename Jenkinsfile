pipeline {
    agent any

    stages {
        
		stage('Vagrant'){
			steps{
				echo 'VM is starting...'
				powershell label: '', script: 'vagrant up'
				echo 'vagrant built succesfully...'
			
								}
			}
			stage('compile app'){
			steps{
					powershell label: '', script: 'vagrant ssh -c "cd /vagrant; pwd; ./compileApp.sh"'
					echo 'Build app succesfully'
				
				}
			}
			stage('docker'){
			steps{
					powershell label: '', script: 'vagrant ssh -c "cd /vagrant; docker-compose up"'
					echo 'spring-mvc-app succesfully'
				
				}
			}
        
        }
    }