# frozen_string_literal: true

# An array A consisting of N different integers is given. The array contains
# integers in the range [1..(N + 1)], which means that exactly one element is
# missing.

# [] rather than loop, is it possible to compute?
def solution(array)
  array.sort!
  current = 1
  (0..array.size).step(1) do |n|
    return current unless array[n] == current

    current += 1
  end
end

# for debugging
# solution([], 1)
