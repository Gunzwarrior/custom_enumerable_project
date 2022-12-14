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
end

class Array
  def my_each
    for i in self do
      yield i
    end
    self
  end
end
