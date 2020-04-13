FROM registry.access.redhat.com/ubi8/ubi
RUN yum install -y wget curl
RUN wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/stable/openshift-client-linux.tar.gz
RUN tar -xzvf openshift-client-linux.tar.gz && chmod +x oc && chmod +x kubectl && mv oc /usr/local/bin && mv kubectl /usr/local/bin && rm openshift-client-linux.tar.gz
CMD ["/usr/local/bin/oc", "version"]

