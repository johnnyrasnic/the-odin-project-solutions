def merge_sort(arr)
  return arr if arr.length <= 1

  middle = arr.length / 2
  left = arr[0,middle]
  right = arr[middle,arr.length ]
  left = merge_sort(left)
  right = merge_sort(right)

  answer = []

  loop do
		if left[0] <= right[0]
			answer << left.shift
		else
			answer << right.shift
		end
		break if (left.length == 0 || right.length == 0)
	end
  answer + left + right
end

sample = []
100.times { sample << rand(10000) + 1 }
p sample
puts 'sorted: '
p merge_sort(sample)
