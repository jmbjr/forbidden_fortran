#!/bin/bash
echo "DANGEREROUS FORTRAN!"
time ./dangerous_fortran
echo "RESTRICTED C!"
time ./restricted_c
echo "safer FORTRAN!"
time ./safer_fortran
echo "unrestricted c!"
time ./unrestricted_c


