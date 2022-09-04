program test_float_array
    implicit none

    double precision,dimension(100) :: x

    double precision :: xx
    double precision :: pi = 3.1415926535
    double precision :: nnn = 100

    integer :: output_file_unit = 100
    integer :: i

    ! 乱数生成
    ! https://www.nag-j.co.jp/fortran/tips/tips_RandomNumberInFortran.html

    open(output_file_unit, &
        file="float_array.dat", & 
        form="unformatted", & 
        status="replace", &
        access="stream")

    do i=1,100
        xx = 2*pi*i/dble(nnn)
        write(output_file_unit) sin(xx)
        write(6,*) sin(xx)
    end do

    close(output_file_unit)

end program test_float_array