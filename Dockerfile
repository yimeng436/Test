From pytorch/pytorch:1.7.1-cuda11.0-cudnn8-devel
RUN pip install pycocotools
RUN pip install lxml 
RUN pip install matplotlib
RUN pip install tqdm
RUN pip install Pillow
RUN pip install cython pyyaml==5.1
RUN pip install opencv-python
RUN pip install cython
RUN pip install -U 'git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI'
RUN python -m pip install 'git+https://github.com/facebookresearch/detectron2.git'
