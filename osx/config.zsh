# ensure you are using the brew installed versions
# make sure /usr/local/bin is before /usr/sbin in your PATH
PATH="/usr/local/bin:$PATH"


# OSX scripts path
export SCRIPTS="$(dirname $0)/bin"


# set node.js paths
export NODE_LOCAL="./node_modules/.bin"
export NODE_PATHS="$NODE_LOCAL:$NODE_YARN"


# set golang paths
export GOPATH=$HOME/.go
export GOROOT=/usr/local/opt/go/libexec
export GO_PATHS=$GOPATH/bin:$GOROOT/bin


# export PATH last
export PATH="$SCRIPTS:$NODE_PATHS:$GO_PATHS:$PATH"


# run node with ES Modules support
alias esm="node --experimental-modules --experimental-json-modules --es-module-specifier-resolution=node --no-warnings"
# easier access to projects folder
alias projects="cd /Volumes/Media/Projects"


echo "\n  Hello $(id -un)!"
