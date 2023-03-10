pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENTIALS = credentials('DockPW')
  }
  stages {
    stage('Timarcus - Build Docker Image') {
      steps {
        sh 'docker build -t timarcuslt/DP-alpine .'
      }
    }
    stage('Timarcus - Login to Dockerhub') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Timarcus - Push image to Dockerhub') {
      steps {
        sh 'docker push timarcuslt/DP-alpine:latest'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
