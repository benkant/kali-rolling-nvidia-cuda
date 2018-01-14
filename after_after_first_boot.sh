#!/usr/bin/env bash

# headers for building modules n shit
apt install -y linux-headers-$(uname -r)

# all the NVIDIA, CUDA, OpenCL
apt install -y ocl-icd-libopencl1 nvidia-driver nvidia-cuda-toolkit clinfo

# CUDA availability
echo -e "\n# CUDA\nPATH=$PATH:/usr/lib/nvidia-cuda-toolkit/bin\nLD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/nvidia-cuda-toolkit/lib:/lib\nexport PATH\nexport LD_LIBRARY_PATH" >> .~/bashrc

# for pyrit bad arse mode
apt install -y mesa-utils libssl-dev libpcap-dev python-pycuda python3-pycuda
# TODO
# apt uninstall pyrit
# https://github.com/JPaulMora/Pyrit/issues/528#issuecomment-354242165

# finally
apt autoremove && apt -f install
