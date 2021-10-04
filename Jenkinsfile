pipeline {
  agent any
  stages {
    stage('Say Hello') {
      steps {
        echo "Hello ${MY_NAME}!"
        echo "${params.Vera}"
        sh 'java -version'
        echo "The build name is ${env.BUILD_NUMBER}"
      }
    }

  }
  environment {
    MY_NAME = 'Francisco'
  }
  parameters {
    string(name: 'Vera', defaultValue: 'whoever you are', description: 'who should i say hi to?')
  }
}