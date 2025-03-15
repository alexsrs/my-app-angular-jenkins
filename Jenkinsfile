pipeline {
environment {
    comando = "docker run -d -p 4200:4200"
  }
agent {
docker {
image 'alpine-node-docker' // Imagem Customizada
    }
  }
stages {
stage('Build') {
      steps {
sh 'npm install' // Instala dependencias
      }
    }
stage('Build Docker Image') {
      steps {
sh "docker buildx . my-app:${env.BUILD_NUMBER}"
      }
    }
stage('Deploy') {
      steps {
sh "${comando} --name my-app my-app:${env.BUILD_NUMBER}"
      }
    }
  }
}
