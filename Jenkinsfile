pipeline {
  agent any
  stages {
    stage('Hello') {
      steps {
        echo 'Hello World'
        sh '''pipeline {
   agent {
    label \'jdk9\'
  }
   stages {
      stage(\'Say Hello\') {
         steps {
            echo \'Hello World!\'   
            sh \'java -version\'
         }
      }
   }
}'''
        }
      }
    }
  }