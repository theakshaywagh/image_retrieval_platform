pipeline {
    agent any
    tools{
        maven 'maven_3_8_6'
    }
    stages{
        stage('Build Maven'){
            steps{
                echo "Now in maven build phase"
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/theakshaywagh/image_retrieval_platform.git']]])
                echo "checkout complete"
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    echo "entered in build docker image phase"
                    sh 'docker build -t theakshaywagh/image_retrieval_platform .'
                    echo " build docker image phase completed"
                }
            }
        }
    }   
}         
 
