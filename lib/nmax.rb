require "nmax/version"

module Nmax
  extend self

  attr_accessor(:stdin)
  @stdin = $stdin

  def perform(number_count)
    raise 'Number count is less 1' if number_count < 1
    return [] if stdin.nil?

    numbers = []
    current_number_str = ''
    while symbol = stdin.getc
      if symbol =~ /\d/
        current_number_str << symbol
        next
      end

      next if current_number_str.empty?

      insert_into_array(numbers, current_number_str.to_i, number_count)
      current_number_str = ''
    end

    unless current_number_str.empty?
      insert_into_array(numbers, current_number_str.to_i, number_count)
    end
    numbers
  end

  private

  def insert_into_array(array, element, max_elements)
    return array << element if array.empty?
    index = array.index { |x| x <= element } || array.size
    return if array[index] == element
    array.insert(index, element)
    array.pop if array.size > max_elements
  end
end
