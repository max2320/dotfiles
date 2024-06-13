FROM alpine:edge

RUN apk add --update \
            openvpn \
            firefox \
            curl \
            ip6tables \
            iptables \
            nodejs-current \
            npm \
            ttyd \
            openssh \
            openssl \
            aws-cli \
            bash \
            bash-completion \
            kubectl \
            k9s \
            vim

RUN apk add font-inconsolata font-dejavu font-noto font-awesome font-noto-extra
RUN apk add font-vollkorn font-misc-cyrillic font-mutt-misc font-screen-cyrillic font-winitzki-cyrillic font-cronyx-cyrillic

RUN  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

COPY ./start_client.sh /start_client.sh

RUN chmod +x /start_client.sh

# RUN xvfb-run firefox -CreateProfile vpn

ENTRYPOINT /start_client.sh
