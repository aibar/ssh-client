FROM walkingdevs/alpine

RUN apk update && \
    apk upgrade && \
    apk add sshpass && \
    mkdir ~/.ssh && chmod 700 ~/.ssh && \
    echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config && \
    rm -rf /var/cache/apk/*