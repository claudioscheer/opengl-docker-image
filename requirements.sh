# Required.
apt-get update && \
apt-get install -y -qq --no-install-recommends \
    libglvnd0 \
    libgl1 \
    libglx0 \
    libegl1 \
    libxext6 \
    libx11-6 \
    mesa-utils \
    glmark2

# Used to build some applications.
apt-get install -y \
    libsdl2-dev \
    libsdl2-image-dev \
    libpcre3-dev \
    libfreetype6-dev \
    libglew-dev \
    libglm-dev \
    libboost-filesystem-dev \
    libpng-dev \
    libtinyxml-dev

# Clean build files.
rm -rf /requirements.sh
rm -rf /var/lib/apt/lists/*
