FROM rjrivero/c9-node

RUN echo -e "\n" | add-apt-repository ppa:webupd8team/java && \
    apt-get -qq update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    oracle-java8-installer oracle-java8-set-default xvfb && \
    update-java-alternatives -s java-8-oracle && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Pentaho environment variables
ENV PENTAHO_JAVA_HOME "/usr/lib/jvm/java-8-oracle/jre"
ENV PENTAHO_JAVA "/usr/lib/jvm/java-8-oracle/jre/bin/java"
