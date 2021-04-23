FROM continuumio/miniconda3
RUN apt-get update -y && \
	apt install -y libgl1-mesa-glx && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN conda install -c conda-forge -c cadquery cadquery=master && \
	conda clean -a -y
WORKDIR /cadquery
