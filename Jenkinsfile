node {
   stage('Fetch docker image') {
       sh 'docker pull harad/codechan'
   }
   
   stage('Run application in docker') {
       sh 'docker run -d -p 8008:5000 harad/codechan'
   }
   
   stage('verify application is running') {
       sh 'wget 104.155.2.92:8008'
   }
   
   stage('clean up docker container') {
       sh 'docker stop $(docker ps -a -q -f status=running)'
   }
}
