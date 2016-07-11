FROM jenkins:latest
USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN groupmod --new-name docker users && usermod -a -G docker jenkins
RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.1.3/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl 
USER jenkins
RUN install-plugins.sh workflow-aggregator job-dsl script-security 
