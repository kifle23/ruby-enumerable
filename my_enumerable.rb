module MyEnumerable
  def all?(&block)
    each { |item| return false unless block.call(item) }
    true
  end

  def any?
    each { |item| return true if yield(item) }
    false
  end

  def filter(&block)
    filtered_array = []
    each { |element| filtered_array << element if block.call(element) }
    filtered_array
  end
end
