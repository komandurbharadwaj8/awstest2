pipeline {
  agent any 

  stages {
       
       stage('Build Docker image'){
          
            steps {
                echo "Hello Java Express"
                sh 'ls'
                sh 'docker build -t  bharadwajaws/docker_jenkins_springboot:${BUILD_NUMBER} .'
            }
        }
        stage('Docker Login'){
            
            steps {
                 withCredentials([string(credentialsId: 'DockerId', variable: 'Dockerpwd')]) {
                    sh "docker login -u bharadwajaws -p unzerbrechlichemusik@213"
                }
            }                
        }
        stage('Docker Push'){
            steps {
                sh 'docker push bharadwajaws/docker_jenkins_springboot:${BUILD_NUMBER}'
            }
        }
        stage('Docker deploy'){
            steps {
               
                sh 'docker run -itd -p  8383:8383 bharadwajaws/docker_jenkins_springboot:${BUILD_NUMBER}'
            }
        }
  }
}
