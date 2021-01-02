pipeline{
    agent any
    environment{
      docker_tag = getdockerimage()
    }
    stages{
        stage('checkout'){
         steps{
          git 'https://github.com/chaitanya2295/simple-app.git'
         }
        }
        stage('build'){
            steps{
              sh 'mvn clean package'
                
            }
        }
        stage('build docker image'){
            steps{
                script{
                   sh "docker build . -t chaitanya2295/final:${docker_tag} . "
                }
            }
              
        }
            
            
    }
}    
def getdockerimage(){
  def tag = sh script: 'git rev-parse HEAD' , returnStdout:true
  return tag
}
