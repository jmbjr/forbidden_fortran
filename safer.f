program safer_fortran
    implicit none
    integer, parameter :: n = 100000000
    real, target, allocatable :: array1(:), array2(:)
    real, pointer :: ptr1(:), ptr2(:)
    integer :: i

    ! Allocate arrays
    allocate(array1(n), array2(n))

    ! Initialize arrays
    array1 = 1.0
    array2 = 2.0

    ! Assign pointers (indicating possible aliasing)
    ptr1 => array1
    ptr2 => array2

    ! Loop over arrays (compiler assumes aliasing might occur)
    do i = 1, n
        ptr1(i) = ptr1(i) + ptr2(i)
    end do

    ! Output some value to prevent optimization from removing the loop
    print *, array1(n)

    ! Deallocate arrays
    deallocate(array1, array2)
end program safer_fortran
