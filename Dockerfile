FROM ubuntu:22.04

# skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# Install GCC, GFortran, and other necessary tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    gcc \
    gfortran \
    time \
    make \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY . .

# Compile C and Fortran programs
RUN chmod 755 *.sh
RUN ./makeall.sh
RUN ./perf.sh

