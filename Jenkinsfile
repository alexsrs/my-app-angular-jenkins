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
sh 'npminstall' // Instala dependencias
      }
    }
stage('Build Docker Image') {
      steps {
sh "docker build . -tmy-app:${env.BUILD_NUMBER}"
      }
    }
stage('Deploy') {
      steps {
sh "${comando} --namemy-app my-app:${env.BUILD_NUMBER}" 
      }
    }
  }
}