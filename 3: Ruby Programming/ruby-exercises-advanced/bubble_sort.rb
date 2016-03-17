def bubble_sort(arr)
  loop do
    i = 0
    swap = false
    while i < arr.length - 1
      if arr[i + 1] < arr[i]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = true
      end
      i += 1
    end
  break if
    swap === false
  end
   print arr
end

bubble_sort([1,56,72,5,6,7,100,999999])

def bubble_sort_by(arr)
  loop do
    i = 0
    swap = false
    while i < arr.length - 1
      if yield(arr[i + 1] < arr[i]) > 0
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = true
      end
      i += 1
    end
  break if
    swap === false
  end
   print arr
 end

 bubble_sort_by(["Yo Edo wwwwwwww d"]) do |left, right|
   left.length - right.length
 end
