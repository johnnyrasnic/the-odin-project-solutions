module Enumerable
  def my_each
    return self unless block_given?
    for i in self
      yield(i)
    end
  end

  def my_each_with_index
    return self unless block_given?
    for i in 0..length
      yield(self[i], i)
    end
  end

  def my_select
    arr = []
    my_each { |i| arr << i if yield(i) }
    arr
  end

  def my_all?
    self.my_each do |val|
      unless yield(val)
        return false
      else
        return true
      end
    end
  end

  def my_any?
    self.my_each { |value| return true if yield(value) }
  end

  def my_none?
    self.my_each do |val|
      unless yield(val)
        return true
      else
        return false
      end
    end
  end

  def my_count
    count = 0
    if arg
			self.my_each { |i| total += 1 if i == arg }
		elsif block_given?
			self.my_each { |i| total += 1 if yield(i) == true }
		else
			total = self.size
		end
		return total
  end

  def my_map
    arr = []
		self.my_each do |i|
			arr << yield(i)
		end
		return ary
  end

  def my_map_mod(code_block)
    return self unless block_given?
    arr = []
    self.my_each do |val|
      arr << code_block.call(val)
    end
    return arr
  end

  def my_inject
    temp = nil
    self.my_each do |val|
      if temp.nil?
        temp = val
      else
        temp = yield(temp,val)
      end
      return temp
  end

  def multiply_els(arr)
    arr.my_inject { |product, i| product * i}
  end
end
