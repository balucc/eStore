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
     stage('copy artifact to docker and build container'){
      steps{
       sshPublisher(publishers: [sshPublisherDesc(configName: 'docker-server', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '''cp estore/target/eStore-0.0.1-SNAPSHOT.war /root/estore;
cd estore
docker build . -t estore;
docker run -itd --name estore-container -p 8080:8080 estore;''', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '/estore', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '**/**')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
 }}}} 
