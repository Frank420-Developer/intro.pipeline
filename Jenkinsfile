pipeline {
  agent any
  stages {
    stage('Say Hello') {
      steps {
        echo "Hello ${MY_NAME}!"
        echo "${TEST_USER}"
        sh 'java -version'
      }
    }

  }
  environment {
    MY_NAME = 'Francisco'
    TEST_USER = credentials('admin')
  }
}