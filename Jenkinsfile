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
     stage('copy artifact to docker'){
      steps{
        sshPublisher(publishers: [sshPublisherDesc(configName: 'docker-server', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '.', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '**/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)]) 
   }}}} 
