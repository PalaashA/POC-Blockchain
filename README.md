# POC-Blockchain
## Dependencies : 
1. Dependencies required will be : Node 8.9 (use Node Version Manager for easy installation) & npm 5.6
2. Docker, and Docker-Compose
3. Python 2.7
4. CURL
5. Git

## Installing the dependencies : 
### Installing CURL-
``` sudo apt install curl ```

### Installing Git - 
``` sudo apt install git ```

### Node 8.9 and NPM through Node Version Manager -
1. Execute the following lines in your Ubuntu bash terminal :
```
   sudo apt-get update
   sudo apt-get install build-essential libssl-dev
   curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh -o install_nvm.sh
   bash install_nvm.sh
   export NVM_DIR="${HOME}/.nvm"
   [ -s "${NVM_DIR}/nvm.sh" ] && . "${NVM_DIR}/nvm.sh"
   [ -s "${NVM_DIR}/bash_completion" ] && . "${NVM_DIR}/bash_completion"
   source ~/.profile
   nvm install 8.9.4
   nvm use 8.9.4
   node --version
   npm --version
```
2. Installing Docker : 
```
   sudo apt update
   sudo apt install apt-transport-https ca-certificates curl software-properties-common
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
   sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
   sudo apt update
   apt-cache policy docker-ce
   sudo apt install docker-ce
   sudo usermod -aG docker $(whoami)
   docker --version
```
3. Installing Docker-Compose : 
```
   sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
   sudo chmod +x /usr/local/bin/docker-compose
   docker-compose --version
```
4. Installing Python 2.7 : 
``` 
   sudo apt install python
   python --version
```
 ## Setting up the environment :
 1. Run the 'prereqs-ubuntu.sh' file in bash : `./prereqs-ubuntu.sh`
 2. Essential CLI tools: 
    `npm install -g composer-cli@0.20`
 3. Utility for running a REST Server on your machine to expose your business networks as RESTful APIs:
    `npm install -g composer-rest-server@0.20`
 4. Useful utility for generating application assets:
    `npm install -g generator-hyperledger-composer@0.20`
 5. Yeoman is a tool for generating applications, which utilises generator-hyperledger-composer:
    `npm install -g yo`
 6. Install playground : `npm install -g composer-playground@0.20`
 7. Starting and Stopping Fabric : 
    ```
    cd ~/fabric-dev-servers
    export FABRIC_VERSION=hlfv12
    ./startFabric.sh
    ./createPeerAdminCard.sh
    ```
 8. Start the web-app (Playground) : 
     `composer-playground`
9. Appendix:  Destroy a previous setup 
    ```docker
    docker kill $(docker ps -q)
    docker rm $(docker ps -aq)
    docker rmi $(docker images dev-* -q)
    ```