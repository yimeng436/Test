FROM pytorch/pytorch:1.7.1-cuda11.0-cudnn8-devel
RUN pip install opencv-python-headless
RUN pip install numpy
RUN pip install openmim
RUN pip install cython pip install pycocotools
RUN pip install mmcv-full -f https://download.openmmlab.com/mmcv/dist/cu110/torch1.7.1/index.html
RUN pip install terminaltables
