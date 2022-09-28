FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-devel
RUN pip install opencv-python-headless
RUN pip install numpy
RUN pip install fairscale
RUN pip install iopath
RUN pip install tabulate
RUN pip install termcolor
RUN pip install cython pip install pycocotools
RUN pip install git+https://github.com/cocodataset/panopticapi.git
RUN pip install git+https://github.com/lvis-dataset/lvis-api.git
RUN pip install git+https://github.com/mcordts/cityscapesscripts.git
RUN pip install requests-ntlm
RUN pip install omegaConf
RUN pip install timm
