module load cmake
module load rocm/5.3.0
module load cray-mpich

export cc=gcc
export CC=g++

export MY_HIP_ARCH=gfx90a