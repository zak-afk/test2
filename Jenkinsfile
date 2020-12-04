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
        }
  }
} 
