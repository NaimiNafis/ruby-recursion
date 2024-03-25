# def fibs(n)
#   (2..n).reduce([0,1]) do |arr, i|
#     arr.push(arr[i - 1] + arr[i - 2])
#   end
# end

def fibs(n)
  array = []

  0.upto(n) do |i|
    if i == 0
      array << 0
    elsif i == 1
      array << 1
    else
      fib = array[i - 2] + array[i - 1]
      array << fib
    end
  end
  array
end

def fibs_rec(n)
  # base case
  return [0] if n == 0
  return [0, 1] if n == 1

  # recursive case
  array = fibs_rec(n - 1)

  array << array[-2] + array[-1] # counting from back
end

p fibs(8)
p fibs_rec(8)



# 1. 0, 1, 1,
# 2. 0, 1, 1, 2,
# 3. 0, 1, 1, 2, 3,
# 4. 0, 1, 1, 2, 3, 5,
# 5. 0, 1, 1, 2, 3, 5, 8,
# 6. 0, 1, 1, 2, 3, 5, 8, 13
