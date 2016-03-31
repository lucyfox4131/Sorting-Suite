require "minitest/autorun"
require "minitest/pride"
require './bubble_sort'

class BubbleSortTest < Minitest::Test

#get tips on pulling out a helper class for testing so don't always have to instantiate same class over and over again

  def test_if_sorter_is_a_new_instance_of_BubbleSort_class
    sorter = BubbleSort.new
    assert_equal BubbleSort, sorter.class
  end

  def test_if_empty_array_passed_through
    skip
    sorter = BubbleSort.new([])
    assert_equal nil,sorter.sort
  end

  def test_if_one_single_element_in_array
    skip
    sorter = BubbleSort.new([1])
    assert_equal [1], sorter.sort
  end

  def test_sort_on_array_with_several_chars
    skip
    sorter = BubbleSort.new(["d", "b", "a", "c"])
    assert_equal ["a", "b", "c", "d"], sorter.sort
  end

  def test_sort_on_array_with_several_integers
    skip
    sorter = BubbleSort.new(["4", "2", "1", "3"])
    assert_equal ["1", "2", "3", "4"], sorter.sort
  end

  def test_if_array_unsortable_due_to_many_types
    skip
    #someone tries to pass in a string and an integer at same time?
    sorter = BubbleSort.new
    assert_equal error(or something else here??), sorter.sort
  end

end
