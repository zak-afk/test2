pipeline {
 agent any
  environment {
    registry = "zakabubu96/new"
    registryCredential = 'dockerhub'
    dockerImage = ''   }
 tools {
      maven 'maven'    } 
 stages { 
      stage ("build") {
            steps {
               sh "mvn clean"
               sh "mvn install"
            }
        }
      stage('Building image') {
        steps{
          script {
             dockerImage = docker.build registry + ":$BUILD_NUMBER"
             }
           }
        }
      stage('Deploy Image') {
         steps{
            script {
              docker.withRegistry('', registryCredential ) {
                 dockerImage.push()
                     }
                  }
               }
        }
      stage('Remove Unused docker image') {
         steps{
            sh "docker rmi $registry:$BUILD_NUMBER"
            }
          }
       } 
}
