FROM continuumio/anaconda3

RUN conda config --add channels conda-forge

RUN conda install nb_conda -y && conda install obspy -y

RUN conda install jupyter -y --quiet 

RUN conda install -c conda-forge jupyter_contrib_nbextensions && jupyter contrib nbextension install --user 

RUN rm -rf /root/.local/share/jupyter/nbextensions  

EXPOSE 8888

WORKDIR /data

RUN conda install pytorch torchvision cuda80 -c soumith

RUN pip install tensorboardX

RUN pip install tensorflow

CMD jupyter notebook --notebook-dir=/data --ip='*' --allow-root --port=8888 --no-browser
