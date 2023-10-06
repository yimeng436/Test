FROM pytorch/pytorch:1.9.1-cuda11.1-cudnn8-devel
RUN conda install -c fvcore -c iopath -c conda-forge fvcore
RUN pip install tensorboard

# To fix GPG key error when running apt-get update
RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/7fa2af80.pub
RUN apt-get update && apt-get install -y ffmpeg libsm6 libxext6 git ninja-build libglib2.0-0 libsm6 libxrender-dev libxext6 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    
RUN pip install opencv-python==4.7.0.72
RUN pip install numpy
RUN pip install fairscale
RUN pip install iopath
RUN pip install tabulate
RUN pip install termcolor
RUN pip install cython pip install pycocotools
RUN pip install requests-ntlm
RUN pip install OmegaConf
RUN pip install timm
RUN conda install scipy==1.7.3
RUN pip install imagecorruptions
RUN pip install scikit-learn
RUN pip install six
RUN pip install e2cnn

# Install MMCV MMDetection
RUN pip install -U openmim
RUN mim install mmcv-full==1.7.0 -f https://download.openmmlab.com/mmcv/dist/cu102/torch1.8.1/index.html

# Install MMRotate
RUN conda clean --all
RUN git clone https://github.com/open-mmlab/mmrotate.git /mmrotate
WORKDIR /mmrotate
ENV FORCE_CUDA="1"
RUN pip install -r requirements/build.txt
RUN pip install --no-cache-dir -e .
