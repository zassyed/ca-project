node {
   stage('Local') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/zassyed/ca-project.git'
   }
   stage('Staging') {
     sh 'docker run -i --rm --name ca-project -v "$PWD":/home/ubuntu/ca-project -w /home/ubuntu/ca-project sudo install -r requirements'
   }
   stage('Production') {
      sh 'pwd/ca-project/python run.py'
   }
}
