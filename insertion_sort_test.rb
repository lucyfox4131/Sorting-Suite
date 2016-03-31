require "minitest/autorun"
require "minitest/pride"
require './insert_sort'

class insertSortTest < Minitest::Test

#get tips on pulling out a helper class for testing so don't always have to instantiate same class over and over again
#BAISCALLY JUST COPY AND PASTED HERE, MAKE SURE THESE TESTS ARE RELEVANT TO INSERTION
  def test_if_sorter_is_a_new_instance_of_insertSort_class
    sorter = insertSort.new
    assert_equal insertSort, sorter.class
  end

  def test_if_empty_array_passed_through
    skip
    sorter = insertSort.new([])
    assert_equal nil,sorter.sort
  end

  def test_if_one_single_element_in_array
    skip
    sorter = insertSort.new([1])
    assert_equal [1], sorter.sort
  end

  def test_sort_on_array_with_several_chars
    skip
    sorter = insertSort.new(["d", "b", "a", "c"])
    assert_equal ["a", "b", "c", "d"], sorter.sort
  end

  def test_sort_on_array_with_several_integers
    skip
    sorter = insertSort.new(["4", "2", "1", "3"])
    assert_equal ["1", "2", "3", "4"], sorter.sort
  end

  def test_if_array_unsortable_due_to_many_types
    skip
    #someone tries to pass in a string and an integer at same time?
    sorter = insertSort.new
    assert_equal error(or something else here??), sorter.sort
  end

end
