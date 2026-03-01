FROM registry.access.redhat.com/ubi9/ubi

RUN dnf update -y && \
    dnf install -y java-21-openjdk-devel podman-docker tar gzip wget && \
    dnf clean all

# Install Maven 3.9.6 manually (Quarkus requires 3.9.0+)
ENV MAVEN_VERSION=3.9.6
RUN wget -q https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    tar xzf apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /opt && \
    ln -s /opt/apache-maven-${MAVEN_VERSION} /opt/maven && \
    ln -s /opt/maven/bin/mvn /usr/bin/mvn && \
    rm apache-maven-${MAVEN_VERSION}-bin.tar.gz

ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk
ENV M2_HOME=/opt/maven

WORKDIR /workspace
