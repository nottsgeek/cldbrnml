node {
    stage("Cleanup") {
        cleanWs()
    }
    stage("speak") {
        slackSend color: '#BADA55', message: 'Checking for anomaly'
    }
    stage("API Call") {
            sh 'git clone https://github.com/nottsgeek/cldbrnml.git'
            sh '/bin/sh cldbrnml/anmlyapicall.sh ${DetectionValue}'
    }
    stage("Notify Slack") {
        cout = sh (script: 'cat cfile',returnStdout: true)
        slackSend color: '#BADA55', message: "${cout}"
    }
}
