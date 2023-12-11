FROM ethereum/client-go:latest

COPY signer /root/.ethereum/keystore/signer

COPY signer-password.txt /root/.ethereum/signer-password.txt
COPY ./genesis.json /root/genesis.json
COPY scripts/init_genesis.sh /root/init_genesis.sh
RUN chmod +x /root/init_genesis.sh

ENTRYPOINT ["/root/init_genesis.sh"]
