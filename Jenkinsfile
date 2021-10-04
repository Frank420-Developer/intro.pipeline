pipeline {
  agent any
  stages {
    stage('Say Hello') {
      steps {
        echo "Hello ${MY_NAME}!"
        echo "${params.Apellido}"
        sh 'java -version'
        echo "The build name is ${env.BUILD_NUMBER}"
      }
    }

  }
  environment {
    MY_NAME = 'Francisco'
  }
  parameters {
    string(name: 'Apellido', defaultValue: 'whoever you are', description: 'who should i say hi to?')
  }
}