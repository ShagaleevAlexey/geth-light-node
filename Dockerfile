FROM ethereum/client-go:alpine

EXPOSE 8545
EXPOSE 30303

ADD entry.sh entry.sh

ENTRYPOINT ["/bin/sh", "entry.sh"]