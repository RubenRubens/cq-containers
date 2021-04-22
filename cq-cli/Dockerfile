# This image is based on
# https://github.com/CadQuery/cq-cli

FROM centos
RUN yum install mesa-libGL -y
WORKDIR /cq-bin
ADD cq-cli cq-cli
RUN chmod a=rwx cq-cli
ENV PATH "/cq-bin:${PATH}"
WORKDIR /cadquery
ENTRYPOINT [ "cq-cli" ]