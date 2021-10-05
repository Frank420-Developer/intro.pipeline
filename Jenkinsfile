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
      input {
        message 'Presiona OK para continuar'
        submitter 'user1, user2'
        parameters {
          string(name: 'username', defaultValue: 'user', description: 'Username of the user whos pushed the button')
        }
      }
      steps {
        sh 'echo "deploy"'
        echo "User: ${username} dijo que OK."
      }
    }

  }
  environment {
    OUTPUT_PATH = './tmp'
  }
}