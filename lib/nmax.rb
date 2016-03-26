require "nmax/version"

module Nmax
  extend self

  attr_accessor(:stdin) { STDIN }

  def perform(number_count)
    numbers = []
    current_number_str = ""
    while symbol = stdin.getc
      if symbol =~ /\d/
        current_number_str << symbol
        next
      end

      unless current_number_str.empty?
        insert_into_array(numbers, current_number_str.to_i, number_count)
        current_number_str = ''
      end
    end
    insert_into_array(numbers, current_number_str.to_i, number_count) unless current_number_str.empty?
  end

  private

  def insert_into_array(array, element, max_elements)
    return array << element if array.empty?
    index = [*array.each_with_index].bsearch{|x, _| x < element}&.last || array.size
    array.insert(index, element)
    array.pop if array.size > max_elements
    array
  end
end