FROM continuumio/miniconda3
RUN apt install -y libgl1-mesa-glx
RUN conda install -c conda-forge -c cadquery cadquery=master
WORKDIR /cadquery