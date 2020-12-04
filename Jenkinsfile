pipeline {
 agent any
 tools {
      maven 'Maven'    }
 stages { 
      stage ("build") {
            steps {
               sh "mvn clean"
               sh "mvn install"
               sh "mvn package"
                 }
       stage ("post steps") {
              steps {
                  sh 'docker build -t valaxy_demo . '
                  sh ' docker tag valaxy_demo valaxy/valaxy_demo '
                  sh ' docker push valaxy/valaxy_demo '
                  sh ' docker rmi valaxy_demo valaxy/valaxy_demo '
                 }
        }
  }
} 
