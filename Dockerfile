# This base image contains micromamba
FROM registry.git.embl.org/grp-bio-it/gitlab-images/python-pytest-slim:latest

RUN pip install coverage

# If you need to install additional r packages - replace r-tidyverse by the list of packages
# RUN micromamba install -y -n base -c conda-forge r-tidyverse \
#     && micromamba clean --all --yes \
#     && rm -rf /opt/conda/conda-meta