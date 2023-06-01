pipeline {
  agent any 

  stages {
       
       stage('Build Docker image'){
          
            steps {
                echo "Hello Java Express"
                sh 'ls'
                sh 'docker build -t  bharadwajaws/firstrepo'
            }
        }
         stage('Docker Login') {
      steps {
        script {
          withCredentials([
            usernamePassword(
              usernameVariable: 'bharadwajaws',
              passwordVariable: 'unzerbrechlichemusik@213'
            )
          ]) {
            sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
          }
        }
      }
    }
      
        stage('Docker Push'){
            steps {
                sh 'docker push bharadwajaws/firstrepo'
            }
        }
        stage('Docker deploy'){
            steps {
               
                sh 'docker run -itd -p  8383:8383 bharadwajaws/firstrepo'
            }
        }
  }
}
