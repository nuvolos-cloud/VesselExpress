FROM python:3.7
RUN python3.7 -m pip install snakemake==6.7.0

RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/miniconda/Miniconda3-4.3.14-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh

RUN apt-get update

RUN apt-get install -y blender

ENV PATH /opt/conda/bin:$PATH

WORKDIR /home/user/

COPY VesselExpress /home/user/VesselExpress

WORKDIR /home/user/VesselExpress/

RUN ln -sf /bin/bash /bin/sh

RUN conda update conda

RUN snakemake --use-conda --cores all --conda-frontend conda

CMD snakemake --use-conda --cores all --conda-frontend conda