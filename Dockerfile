# Galaxy - NanoPore

FROM bgruening/galaxy-stable:19.01
MAINTAINER Milad Milad, miladim@cs.uni-freiburg.de

ENV GALAXY_CONFIG_BRAND Galaxy Nanopore

ADD nanopore.yaml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs

