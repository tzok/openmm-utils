FROM anaconda/miniconda

RUN conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main \
    && conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r

RUN conda install -c conda-forge \
    ambertools \
    openmm \
    pdbfixer

COPY compute_energy.py .

CMD ["conda", "run", "--live-stream", "python", "compute_energy.py"]