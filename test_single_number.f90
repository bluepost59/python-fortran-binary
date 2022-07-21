program main
  implicit none
  integer :: xx = 1193046
  
  open(100,file="single_number.dat",form="unformatted",status="replace",convert="little_endian")
  write(100) xx ! 0x123456
  close(100)
end program main
