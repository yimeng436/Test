FROM pytorch/pytorch:1.9.1-cuda11.1-cudnn8-devel
RUN pip install opencv-python-headless
RUN pip install numpy
RUN pip install openmim
RUN pip install cython pip install pycocotools
RUN pip install mmcv-full==1.6.2 -f https://download.openmmlab.com/mmcv/dist/cu111/torch1.9/index.html
RUN pip install terminaltables
