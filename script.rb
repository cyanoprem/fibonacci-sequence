
# Using while loop
def fibs(number)
  array = [0, 1]
  i = 1
  while i <= (number - 2)
    array << (array[-1] + array[-2])
    i += 1
  end
  array
end

# Using recursive function
def fibs_rec(number, array = [0, 1])
  array << (array[-1] + array[-2])
  if array.length < number
    fibs_rec(number, array) 
  end
  array
end

p fibs(8)
p fibs_rec(8)


