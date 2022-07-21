program main
  implicit none

  ! double precision,dimension(10) :: x
  integer, dimension(10) :: x
  integer :: i

  do i=1,10
     x(i)=i
  end do
  
  
  open(100,file="big.dat",form="unformatted",status="replace",convert="big_endian")
  open(101,file="little.dat",form="unformatted",status="replace",convert="little_endian")

  do i=1,10
     write(100) x(i)
     write(101) x(i)
  end do

  close(100)
  close(101)
  
  
end program main
