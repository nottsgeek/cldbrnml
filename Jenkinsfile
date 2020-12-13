node {
    stage("speak") {
        slackSend color: '#BADA55', message: 'Checking for anomaly'
    }
    stage("API Call") {
        sh '/bin/sh apicall.sh'
    }
    stage("Notify Slack") {
        slackSend color: '#BADA55', message: 'Anomaly detected'
    }
}
