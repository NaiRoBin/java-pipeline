pipeline {
  environment {
    registry = "nairobin/java-pipeline"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/NaiRoBin/java-pipeline.git'
      }
    }
    stage('Build') {
       steps {
         sh 'mvn -B -DskipTests clean package'
       }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
	stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Cleaning up') {
      steps{
        sh "docker container run -it --publish 8081:8080 docker.build registry + \":$BUILD_NUMBER\""
        "
      }
    }
  }
}