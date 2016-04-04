class MergeSort

  def merge_sort(array)
    if array.count <= 1
      array
    else
      midpoint = (array.count/2).floor
      left = merge_sort(array[0..midpoint-1])
      right = merge_sort(array[midpoint..array.count])
      merge(left, right)
    end
  end


  def merge(left = [], right = [])
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left.first < right.first
      [left.first] + merge(left[1..left.count], right)
    else
      [right.first] + merge(left, right[1..right.count])
    end
  end


end
