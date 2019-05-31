#!/usr/bin/env groovy
pipeline {
  agent any
  options { skipDefaultCheckout()
            disableConcurrentBuilds()
          }

  stages {
    stage('Build Dependencies') {
      steps {
        checkout scm
        sh "npm install"
      }
    }

     stage('Package') {

      steps {
        sh  "npm run build-aws-resource"
      }
    }
    
  stage('Deploy') {
        steps { 
            echo 'Deploying....'
            sh "ls -la"
            sh "pwd"
            sh "aws s3 cp server.js s3://barnacleboyandmermaidman.s3-us-west-1.amazonaws.com"
        }
    }


}
}