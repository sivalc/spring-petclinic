pipeline {
    agent any
    stages {
       /** stage('Build') {
            steps {
                sh 'mvn package'
                sh 'mvn spring-boot:run'
            }
            post {
                always {
                    archiveArtifacts artifacts: '**/target/*.jar'
                }
            }
        }
        
        stage('Code Quality') {
            steps {
             sh 'mvn sonar:sonar -Dsonar.host.url=http://192.168.1.8:9000 -Dsonar.login=fa023b77f86a095a2a7206f3e6d3b3ca2544715e'

            }
        }  **/
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
