pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'echo "Un paso sencillo de una linea"'
        sh '''
           echo "Pasos multilinea"
           cd /tmp
           ls -lrt
           '''
      }
    }

    stage('test: integration y calidad') {
      steps {
        sh 'echo "test: integration y calidad"'
      }
    }

    stage('test: functional') {
      steps {
        sh 'echo "test: functional"'
      }
    }

    stage('aprobaci�n') {
      steps {
        sh 'echo "aprobaci�n"'
      }
    }

    stage('deploy: prod') {
      steps {
        sh 'echo "deploy"'
      }
    }

  }
}