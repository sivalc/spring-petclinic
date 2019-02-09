pipeline {
    agent any
    stages {
       
        stage('Building microservice') {
            steps {
                
                sh 'docker build -t sample .'
            }
            
        }
    }
    post {
        always {
          echo "echo Done"
          deleteDir()
        }
        changed {
          echo "echo something changes"
        }
        failure {
          echo "echo FAILED"
        }
        success {
          echo "echo Successful"
        }
        unstable {
          echo "echo Unstable"
        }
    }
}
