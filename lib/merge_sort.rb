def merge_sort(array)
  n = array.size
  return array if n <= 1

  mid = n / 2
  array_left = merge_sort(array[0, mid]) # array[start, length]
  array_right = merge_sort(array[mid, n - mid])

  merge(array_left, array_right)
end


def merge(a, b)
  sorted = []
  while !a.empty? || !b.empty?
    if a.empty? # to fix the nil problem
      sorted << b.shift
    elsif b.empty?
      sorted << a.shift
    elsif a.first <= b.first
      sorted << a.shift
    else
      sorted << b.shift
    end
  end
  sorted
end

# def merge(a, b)
#   sorted = []
#   sorted << a
#   sorted << b
#   sorted = sorted.flatten!.sort
#   sorted
# end


p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
p merge_sort([105, 79, 100, 110])
