pipeline {
  environment {
    comando = "docker run -d -p 4200:4200"
  }
  agent {
    docker {
      image 'alpine-node-docker' // Imagem Customizada com Docker CLI instalado
      args '-v /var/run/docker.sock:/var/run/docker.sock'
    }netw
  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install' // Instala dependências
      }
    }
    stage('Build Docker Image') {
      steps {
        sh "docker build . -t my-app:${env.BUILD_NUMBER}"
      }
    }
    stage('Deploy') {
      steps {
        sh "${comando} --name my-app my-app:${env.BUILD_NUMBER}"
      }
    }
  }
}