require "minitest/autorun"
require "minitest/pride"
require '../sort/bubble_sort'

class BubbleSortTest < Minitest::Test

  def setup
    @sorter = BubbleSort.new
  end

  def test_if_sorter_is_a_new_instance_of_BubbleSort_class
    assert_equal BubbleSort, @sorter.class
  end

  def test_if_empty_array_passed_through
    assert_equal [],@sorter.sort([])
  end

  def test_if_one_single_element_in_array
    assert_equal [1], @sorter.sort([1])
  end

  def test_sort_on_array_with_several_chars
    assert_equal ["a", "b", "c", "d"], @sorter.sort(["d", "b", "a", "c"])
  end

  def test_sort_on_array_with_several_integers
    assert_equal ["1", "2", "3", "4"], @sorter.sort(["4", "2", "1", "3"])
  end

end
