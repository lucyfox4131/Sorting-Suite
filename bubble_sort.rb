#use a counter

class BubbleSort
  attr_reader :array

  def initialize()
    @array = []
    # @counter ???Should I be using this counter instead of a swapped = false or true
  end

  def sort(array = @array)
    elements = array.count
    loop do
      swapped = false
      (elements - 1).times do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array [i+1], array[i]
          swapped = true
        end
      end
      break if swapped == false
    end
    array
  end

end
