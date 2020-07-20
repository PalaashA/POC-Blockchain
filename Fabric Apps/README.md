# Hyperledger Fabric & Composer Apps

* Using this sub-repo we are collecting use cases of Hyperledger Fabric based applications and possible use-case scenarios.

## Setting up the environment :
 1. Essential CLI tools: 
    `npm install -g composer-cli@0.20`
 2. Utility for running a REST Server on your machine to expose your business networks as RESTful APIs:
    `npm install -g composer-rest-server@0.20`
 3. Useful utility for generating application assets:
    `npm install -g generator-hyperledger-composer@0.20`
 4. Yeoman is a tool for generating applications, which utilises generator-hyperledger-composer:
    `npm install -g yo`
 5. Install playground : `npm install -g composer-playground@0.20`
 6. Starting and Stopping Fabric : 
    ```
    cd ~/fabric-dev-servers
    export FABRIC_VERSION=hlfv12
    ./startFabric.sh
    ./createPeerAdminCard.sh
    ```
 7. Start the web-app (Playground) : 
     `composer-playground`
 8. Appendix:  Destroy a previous setup 
    ```docker
    docker kill $(docker ps -q)
    docker rm $(docker ps -aq)
    docker rmi $(docker images dev-* -q)
    ```
