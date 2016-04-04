class InsertionSort


  def sort(array)
    sorted_array = []
    if array.empty?
      return sorted_array
    else
      for element in array
        if sorted_array.empty?
          sorted_array << array[0]
        else
          sorted_array_length = sorted_array.length
          insert_index = -1
          (0...sorted_array_length).each do |i|
            if element <= sorted_array[i]
              insert_index = i
              break
            end
          end
          sorted_array.insert( insert_index ,element)
        end
      end
    end
    return sorted_array
  end

end
