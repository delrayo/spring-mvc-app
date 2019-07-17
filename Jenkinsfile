pipeline {
    agent any

    stages {
        
		stage('Vagrant'){
			steps{
				echo 'VM is starting...'
				powershell label: 'Vagrant', script: 'vagrant up'
				echo 'vagrant built succesfully...'
			
								}
			}
			stage('compile app'){
			steps{
					powershell label: 'Compile app', script: 'vagrant ssh -c "cd /vagrant; pwd; ./compileApp.sh"'
					echo 'Build app succesfully'
				
				}
			}
			stage('docker'){
			steps{
					powershell label: 'Docker', script: 'vagrant ssh -c "cd /vagrant; docker-compose up -d"'
					echo 'spring-mvc-app succesfully'
				
				}
			}
        
        }
    }