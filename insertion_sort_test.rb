require "minitest/autorun"
require "minitest/pride"
require './insertion_sort'

class InsertionSortTest < Minitest::Test

#get tips on pulling out a helper class for testing so don't always have to instantiate same class over and over again
#BAISCALLY JUST COPY AND PASTED HERE, MAKE SURE THESE TESTS ARE RELEVANT TO INSERTION
  def test_if_sorter_is_a_new_instance_of_insertionSort_class
    sorter = InsertionSort.new
    assert_equal InsertionSort, sorter.class
  end

  def test_if_empty_array_passed_through
    skip
    sorter = InsertionSort.new
    assert_equal [],sorter.sort([])
  end

  def test_if_one_single_element_in_array

    sorter = InsertionSort.new
    assert_equal [1], sorter.sort([1])
  end

  def test_sort_on_array_with_several_chars

    sorter = InsertionSort.new
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_sort_on_array_with_several_integers
    
    sorter = InsertionSort.new
    assert_equal ["1", "2", "3", "4"], sorter.sort(["4", "2", "1", "3"])
  end

end
