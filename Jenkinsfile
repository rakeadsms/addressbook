pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "my maven"
        jdk "myjava"
    }

    stages {
        stage('compile') {
            steps {
              
               git 'https://github.com/rakeadsms/addressbook.git'
              
                sh "mvn compile"

              
            }
            }

            
                stage('CodeReview') {
            steps {
                
                sh "mvn pmd:pmd"

                
            }
            }

            stage('UnitTest') {
            steps {
                sh "mvn test"

            }
            post{
                always{
                    junit 'target/surefire-reports/*.xml'
                }
            }
            }
            stage('Package') {

            steps {
                sh "mvn package"

            }
            }
            }
            }
