#!/bin/bash
# Function to run and time a program
run_and_time() {
    echo "$1"
    time ./$2
    sleep 2
}

# Run and time each program
run_and_time "DANGEROUS FORTRAN!" "dangerous_fortran"
run_and_time "RESTRICTED C!" "restricted_c"
run_and_time "SAFER FORTRAN!" "safer_fortran"
run_and_time "UNRESTRICTED C!" "unrestricted_c"



