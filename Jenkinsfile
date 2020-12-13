node {
    stage("Cleanup") {
        cleanWs()
    }
    stage("speak") {
        slackSend color: '#BADA55', message: 'Checking for anomaly'
    }
    stage("API Call") {
        withCredentials([usernamePassword(credentialsId: 'testuname', passwordVariable: 'pass', usernameVariable: 'user')]){
            sh 'git clone https://github.com/nottsgeek/cldbrnml.git'
            sh '/bin/sh cldbrnml/anmlyapicall.sh ${DetectionValue}'
            echo ${user}
            echo ${pass}
        }
    }
    stage("Notify Slack") {
        slackSend color: '#BADA55', message: 'Anomaly detected'
    }
}
