node {
    stage("speak") {
        slackSend color: '#BADA55', message: 'Checking for anomaly'
    }
    stage("API Call") {
        sh 'git clone https://github.com/nottsgeek/cldbrnml.git'
        sh '/bin/sh cldbrnml/anmlyapicall.sh'
    }
    stage("Notify Slack") {
        slackSend color: '#BADA55', message: 'Anomaly detected'
    }
}
