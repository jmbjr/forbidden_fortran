program dangerous_fortran
    implicit none
    integer, parameter :: n = 100000000
    real, allocatable :: array1(:), array2(:)
    integer :: i

    ! Allocate arrays
    allocate(array1(n), array2(n))

    ! Initialize arrays
    array1 = 1.0
    array2 = 2.0

    ! Loop over arrays with assumption of no aliasing
    do i = 1, n
        array1(i) = array1(i) + array2(i)  ! Compiler assumes no aliasing
    end do

    ! Output some value to prevent optimization from removing the loop
    print *, array1(n)

    ! Deallocate arrays
    deallocate(array1, array2)
end program dangerous_fortran
