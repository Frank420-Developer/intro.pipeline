pipeline {
  agent any
  stages {
    stage('Say Hello') {
      steps {
        echo "Hello ${MY_NAME}!"
        sh 'java -version'
      }
    }

  }
  environment {
    MY_NAME = 'Francisco'
  }
  parameters {
    string(name: 'Name', defaultValue: 'whoever you are', description: 'who should i say hi to?')
  }
}