gfortran danger.f90 -o dangerous_fortran
./dangerous_fortran

gcc unrestricted.c -o unrestricted_c
./unrestricted_c

gcc restricted.c -o restricted_c
./restricted_c

gfortran safer.f90 -o safer_fortran
./safer_fortran
