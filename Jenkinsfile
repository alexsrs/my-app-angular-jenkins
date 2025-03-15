pipeline {
  environment {
    comando = "sudo docker run -d -p 4200:4200"
  }
  agent {
    docker {
      image 'alpine-node-docker' // Imagem Customizada
    }
  } 
  stages {
    stage('Check Docker') {
      steps {
        sh 'docker --version' // Verifica a versão do Docker
      }
    }
    stage('Build') {
      steps {
        sh 'npm install' // Instala dependencias
      }
    }
    stage('Build Docker Image') {
      steps {
        sh "sudo docker build . -t my-app:${env.BUILD_NUMBER}"
      }
    }
    stage('Deploy') {
      steps {
        sh "${comando} --name my-app my-app:${env.BUILD_NUMBER}" 
      }
    }
  }
}