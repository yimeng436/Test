FROM pytorch/pytorch:1.8.1-cuda11.1-cudnn8-devel
RUN pip install opencv-python
RUN pip install fvcore
RUN pip install numpy
RUN pip install cython
RUN pip install pycocotools
RUN git clone git@github.com:facebookresearch/detectron2.git
RUN cd detectron2
RUN python setup.py build develop
