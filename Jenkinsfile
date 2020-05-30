pipeline{
   agent any
   stages{
     stage('Git checkout'){
       steps{
        git 'https://github.com/balucc/eStore.git'
       }}
     stage('compile'){
      steps{
       withMaven(maven:'myMaven'){
        sh 'mvn compile'
      }}}
     stage('package'){
      steps{
       withMaven(maven:'myMaven'){
        sh 'mvn package'
       }}} 
     
