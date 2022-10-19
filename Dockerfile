FROM pytorch/pytorch:1.7.1-cuda11.0-cudnn8-devel
RUN pip install opencv-python-headless
RUN pip install numpy
RUN pip install openmim
