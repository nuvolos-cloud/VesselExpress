
<p style="text-align:center; margin-bottom: 0px"><img src="VesselExpress/imgs/logo.svg" alt="Logo" style="width: 15%;"></p>
<h1 style="margin:0px; padding-top: 0px">VesselExpress</h1>
<h3 style="margin-top: 0px">Rapid and fully automated bloodvasculature analysis in 3D light sheet image volumes of different organs.</h3>

[![GitHub Stars](https://img.shields.io/github/stars/RUB-Bioinf/VesselExpress.svg?style=social&label=Star)](https://github.com/RUB-Bioinf/VesselExpress) 
&nbsp;
[![GitHub Downloads](https://img.shields.io/github/downloads/RUB-Bioinf/VesselExpress/total?style=social)](https://github.com/RUB-Bioinf/VesselExpress/releases) 
&nbsp;
[![Follow us on Twitter](https://img.shields.io/twitter/follow/NilsFoer?style=social&logo=twitter)](https://twitter.com/intent/follow?screen_name=NilsFoer)
&nbsp;
[![Follow us on Twitter](https://img.shields.io/twitter/follow/saskra1?style=social&logo=twitter)](https://twitter.com/intent/follow?screen_name=saskra1)
&nbsp;

[![Contributors](https://img.shields.io/github/contributors/RUB-Bioinf/VesselExpress?style=flat)](https://github.com/RUB-Bioinf/VesselExpress/graphs/contributors)
&nbsp;
[![License](https://img.shields.io/github/license/RUB-Bioinf/VesselExpress?color=green&style=flat)](https://github.com/RUB-Bioinf/VesselExpress/LICENSE)
&nbsp;
![Size](https://img.shields.io/github/repo-size/RUB-Bioinf/VesselExpress?style=flat)
&nbsp;
[![Issues](https://img.shields.io/github/issues/RUB-Bioinf/VesselExpress?style=flat)](https://github.com/RUB-Bioinf/VesselExpress/issues)
&nbsp;
[![Pull Requests](https://img.shields.io/github/issues-pr/RUB-Bioinf/VesselExpress?style=flat)](https://github.com/RUB-Bioinf/VesselExpress/pulls)
&nbsp;
[![Commits](https://img.shields.io/github/commit-activity/m/RUB-Bioinf/VesselExpress?style=flat)](https://github.com/RUB-Bioinf/VesselExpress/)
&nbsp;
[![Latest Release](https://img.shields.io/github/v/release/RUB-Bioinf/VesselExpress?style=flat)](https://github.com/RUB-Bioinf/VesselExpress/)
&nbsp;
[![Release Date](https://img.shields.io/github/release-date/RUB-Bioinf/VesselExpress?style=flat)](https://github.com/RUB-Bioinf/VesselExpress/releases)


*VesselExpress* is an open-source software designed for rapid, fully automated and scalable analysis of vascular datasets 
in high-throughput sequences. It processes raw microscopic images (2D or 3D) of blood vessels in  parallel  and outputs 
quantified  phenotypical  data  along with image and object files of the rendered vasculature. The processing steps include segmentation, skeletonization, graph construction with analysis and 
optional rendering. These steps are automated in a pipeline with the workflow management system [Snakemake](https://github.com/snakemake/snakemake) 
(see workflow [DAG](VesselExpress/imgs/dag.pdf)). The whole pipeline can be run via Docker or locally from the command line or 
web browser using the web interface. 

![VesselExpress](VesselExpress/imgs/VesselExpress.png)

**Notes:** It is also possible to execute each step individually with the
corresponding Python script. Existing modules can be exchanged with custom scripts in the [Snakefile](VesselExpress/workflow/Snakefile).

***

## Docker Version
[![Docker Build](https://img.shields.io/docker/automated/philippasp/vesselexpress?style=flat)](https://hub.docker.com/r/philippasp/vesselexpress)
&nbsp;
[![Docker Image Size](https://img.shields.io/docker/image-size/philippasp/vesselexpress?style=flat)](https://hub.docker.com/r/philippasp/vesselexpress)
&nbsp;
[![Docker Downloads](https://img.shields.io/docker/pulls/philippasp/vesselexpress?style=flat)](https://hub.docker.com/r/philippasp/vesselexpress)
&nbsp;
[![Docker Stars](https://img.shields.io/docker/stars/philippasp/vesselexpress?style=flat)](https://hub.docker.com/r/philippasp/vesselexpress)
&nbsp;
[![Docker Version](https://img.shields.io/docker/v/philippasp/vesselexpress?style=flat)](https://hub.docker.com/r/philippasp/vesselexpress)

1. Install Docker for your operating system from [here](https://docs.docker.com/get-docker/).
2. Start Docker.
3. Get the Docker image
   1. from DockerHub \
      via ```docker pull philippasp/vesselexpress_cli```
      for the command-line version \
      or via `docker pull philippasp/vesselexpress` for the web version.
   2. or build the Docker image \
      by calling `docker build -t vesselexpress_cli .` from the VesselExpress directory for the command-line version\
      or by calling `docker build -t vesselexpress .` from the Webinterface directory for the web version.
4. Run the command-line version via `docker run -v path-to-data-and-config:/vesselexpress/data`. The first part of the command specifies the path on your host 
   containing image files to process and the configuration file. An example configuration file and image can be found in
   the data folder.
5. Run the web version via `docker run -p 5000:5000 vesselexpress`. Naviagte to `localhost:5000` in your browser to open the web interface.

## Local Version (without Docker)
For the command-line version follow these instructions:
1. Install Anaconda following the [installation instructions](https://docs.anaconda.com/anaconda/install/index.html).
2. Install Snakemake following the [installation instructions](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html).
3. Install Blender from [here](https://www.blender.org/download/) (optional).
4. In a terminal navigate to the project's root folder and type
`snakemake --use-conda --cores all --conda-frontend conda`

Different parameters can be set by using the command line option '--config' or by changing the parameters in the
[config.json](VesselExpress/data/config.json) file. A full description of command line arguments for Snakemake can be found
[here](https://snakemake.readthedocs.io/en/v4.5.1/executable.html).

For the web version follow these instructions:
1. Install Blender from [here](https://www.blender.org/download/) (optional).
2. Navigate to the Webinterface directory and type `pip install -r requirements.txt`.
3. Type `python /Webinterface/server/app.py` to run the web application.
4. In your browser navigate to `localhost:5000` to open the webpage.

## Correspondence

[**Prof. Dr. Axel Mosig**](mailto:axel.mosig@rub.de): Bioinformatics, Center for Protein Diagnostics (ProDi), Ruhr-University Bochum, Bochum, Germany

http://www.bioinf.rub.de/

[**Prof. Dr. Matthias Gunzer**](mailto:matthias.gunzer@uni-due.de): Institute for Experimental Immunology and Imaging, University Hospital Essen, University of Duisburg-Essen, Essen, Germany

https://www.uni-due.de/experimental-immunology

## Tutorial Video
You can use this YouTube Video for vizualized instructions on how to download, setup and run VesselExpress on example data:

[![Tutorial Video](https://img.youtube.com/vi/ScMzIvxBSi4/0.jpg)](https://www.youtube.com/watch?v=ScMzIvxBSi4)

[![Video Views](https://img.shields.io/youtube/views/ScMzIvxBSi4?style=social)](https://www.youtube.com/watch?v=ScMzIvxBSi4)
&nbsp;
[![Video Likes](https://img.shields.io/youtube/likes/ScMzIvxBSi4?style=social)](https://www.youtube.com/watch?v=ScMzIvxBSi4)


# Example Data

Download our example data from [here]().


# Feedback & Bug Reports

We strive to always improve and make this pipeline accessible to the public.
We hope to make it as easy to use as possible.

Should you encounter an error, bug or need help, please feel free to reach out to us via the [Issues](https://github.com/RUB-Bioinf/VesselExpress/issues) page.
Thank you for your help. Your feedback is much appreciated.

# References
Weilin Fu (2019) Frangi-Net on High-Resolution Fundus (HRF) image database https://doi.org/10.24433/CO.5016803.v2 \
Pesavento, M & Vemuri, P. 3D Image Skeletonization Tools.  (2019). https://github.com/pranathivemuri/skeletonization/commit/b7bd1ce06e557905a32307677c77c1b94305ba5c
****

**Keywords**: stroke; Neuronal Vessel Morphology; High Throughput Light Sheet Microscopy; 3D Skeletonization

****

**Funding**: This research received no external funding.

**Conflicts of Interest**: The authors declare no conflict of interest
