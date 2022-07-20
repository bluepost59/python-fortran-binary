program test_float_array
    implicit none

    double precision,dimension(100) :: x

    integer :: output_file_unit = 100

    ! 乱数生成
    ! https://www.nag-j.co.jp/fortran/tips/tips_RandomNumberInFortran.html

    open(output_file_unit, &
        file="float_array.dat", & 
        form="unformatted", & 
        status="replace")

    call random_number(x)
    ! write(6,*) x
    write(output_file_unit) x
    close(output_file_unit)

end program test_float_array