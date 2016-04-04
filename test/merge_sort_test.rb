require "minitest/autorun"
require "minitest/pride"
require "../sort/merge_sort"


class TestMergeSort < Minitest::Test

  def setup
    @sorter = MergeSort.new
  end
  def test_if_sorter_is_a_new_instance_of_merge_class
    assert_equal MergeSort, @sorter.class
  end

  def test_if_empty_array_passed_through
    assert_equal [],@sorter.merge_sort([])
  end

  def test_if_one_single_element_in_array
    assert_equal [1], @sorter.merge_sort([1])
  end

  def test_sort_on_array_with_several_chars
    assert_equal ["a", "b", "c", "d"], @sorter.merge_sort(["d", "b", "a", "c"])
  end

  def test_sort_on_array_with_several_integers
    assert_equal ["1", "2", "3", "4"], @sorter.merge_sort(["4", "2", "1", "3"])
  end
end
