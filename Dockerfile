
FROM golang:latest

ENV SRC_HOST github.com
ENV SRC_USER mashiox
ENV SRC_NAME hello

# Add build scripts
ADD scripts ${GOPATH}/scripts

# Add list of dependencies
ADD depList.txt ${GOPATH}/depList.txt

# This directory should exist given 
RUN mkdir -p "${SRC_HOST}/${SRC_USER}/${SRC_NAME}" \
    && cd "${SRC_HOST}/${SRC_USER}/${SRC_NAME}"

# Install Go Dep
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

# Add app source
## Go get the dependencies in depList.txt, ignore comments
RUN go get $(cat ./depList.txt | grep -vE "^#" | tr "\n" " ")
## Add user src to container
ADD src ${GOPATH}/src
