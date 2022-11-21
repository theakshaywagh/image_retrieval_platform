pipeline {
    agent any
    tools{
        maven 'maven_3_8_6'
    }
    stages{
        stage('Build Maven'){
            steps{
                echo "Now in maven build phase" 
                pip install -r requirements.txt
		python tests.py
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/theakshaywagh/image_retrieval_platform.git']]])
                echo "checkout complete"
            }
        }
     }
}  
 
