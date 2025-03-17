pipeline {
environment {
    comando = "docker run -d -p 4200:4200"
  }
agent {
docker {
image 'node:alpine' // Imagem Customizada
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
