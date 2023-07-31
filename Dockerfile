FROM continuumio/miniconda3

RUN conda install -c conda-forge \
        ambertools \
        openmm \
        pdbfixer

COPY compute_energy.py .

CMD ["conda", "run", "--live-stream", "python", "compute_energy.py"]
