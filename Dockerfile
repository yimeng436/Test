FROM pull pytorch/pytorch:1.11.0-cuda11.3-cudnn8-devel
RUN pip install opencv-python-headless
RUN pip install numpy
RUN pip install openmim
RUN pip install cython pip install pycocotools
RUN pip install mmcv-full==1.5.0 -f https://download.openmmlab.com/mmcv/dist/cu113/torch1.11.0/index.html
RUN pip install terminaltables
