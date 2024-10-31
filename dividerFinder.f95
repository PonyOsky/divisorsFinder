program dividerFinder
    !this program is finding all integer divisors of user number
    integer :: subject, counter = 0
    integer, allocatable :: divisors(:)
    print *, "Enter number. I will find all integer divisors!"
    read(*,*) subject
    allocate(divisors(subject))
    do index = 1, subject
        if(mod(subject, index) == 0) then
            divisors(counter) = index
            counter = counter + 1
        end if
    end do
    index = 0
    print *, subject, " has ", counter, " divisors: "
    do index = 1, counter
        print *, divisors(index - 1) 
    end do
    !deallocate(divisors)
end program dividerFinder
