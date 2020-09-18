# install wget curl net-tools
sudo apt-get install wget curl net-tools -y
# config nodejs
wget -O node.tar.xz "https://nodejs.org/dist/v12.18.3/node-v12.18.3-linux-x64.tar.xz"
# unzip the node.tar.xz
tar -xvf node.tar.xz
# rename the directory to node
mv node-v12.18.3-linux-x64 node

# move node to /opt/node
sudo mv node /opt/node

#config the PATH env
echo "export NODE_HOME=/opt/node \
	  export PATH=\$PATH:\$NODE_HOME/bin" >> ~/.zshrc && source ~/.zshrc

# make changes update


# install nrm
npm install -g nrm
# config nrm repository
nrm add taobao "http://registry.npm.taobao.org/"
nrm add npm 	"https://registry.npmjs.org/"

# use taobao repository
nrm use taobao
# install angular & react cli
npm install -g @angular/cli create-react-app