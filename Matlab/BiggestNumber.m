function BiggestNumber(A,B,C)

if A > B
    if A > C
        fprintf("A is the largest numebr.\n")
    else fprintf("C is the largest number.")
    end

elseif B > C
        fprintf("B is the largest number.\n")

else fprintf("C is the largest number.\n")
end
end