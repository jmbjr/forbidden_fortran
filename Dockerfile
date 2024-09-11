FROM gcc:latest

RUN apt-get update && apt-get install -y \
    gfortran \
    time \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY . .

# Compile C and Fortran programs
RUN ./makeall.sh
RUN ./perf.sh

