FROM gcc:latest

# skip prompts
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    gfortran \
    time && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY . .

# Compile C and Fortran programs
RUN ./makeall.sh
RUN ./perf.sh

