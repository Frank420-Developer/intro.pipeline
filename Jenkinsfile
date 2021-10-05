pipeline {
  agent any
  stages {
    stage('Corriendo en paralelo') {
      parallel {
        stage('a') {
          steps {
            echo 'Test en paralelo en Linux'
          }
        }

        stage('b') {
          steps {
            echo 'Test en paralelo en Windows'
          }
        }

      }
    }

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
      when {
        branch 'test'
      }
      steps {
        sh 'echo "Ejecucion de pruebas en rama test"'
      }
    }

    stage('aprobación') {
      steps {
        sh 'echo "aprobación"'
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
  post {
    always {
      echo 'El pipeline se ejecuto exitosamente'
    }

    failure {
      mail(to: 'fvera@na-at.com.mx', subject: 'Error en el pipeline del ejercicio del curso de docker.', body: 'Cuerpo del correo')
    }

    aborted {
      echo 'No termino de correr el Pipeline fue forzado a terminar'
    }

  }
}