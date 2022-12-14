module Enumerable
  def my_each_with_index
    for i in 0...self.length do
      j = self[i]
      yield(j, i)
    end
    self
  end

  def my_select
    new_array = []
    for i in self do
      new_array.push(i) if yield i
    end
    new_array
  end

  def my_all?
    new_array = []
    for i in self do
      new_array.push(i) if yield i
    end
    return true if new_array == self
    false
  end

  def my_any?
    for i in self do
      return true if yield i
    end
    false
  end

  def my_none?
    for i in self do
      return false if yield i
    end
    true
  end

  def my_count
    return length unless block_given?
    count = 0
    for i in self do
      count += 1 if yield i
    end
    count
  end

end

class Array
  def my_each
    for i in self do
      yield i
    end
    self
  end
end
