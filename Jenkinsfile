node {
    stage("speak") {
        #slackSend color: '#BADA55', message: 'Hello, World!'
    }
    stage("API Call") {
        sh 'apicall.sh'
    }
    stage("Notify Slack") {
        slackSend color: '#BADA55', message: 'Hello, World!'
    }
}
