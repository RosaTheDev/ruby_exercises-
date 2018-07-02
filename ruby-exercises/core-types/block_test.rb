gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

class BlockTest < Minitest::Test
  def test_default_return_value
    assert_nil Proc.new {}.call
    assert_nil Proc.new { |arg| }.call(1)
    assert_equal ____, Proc.new { 1 }.call
    assert_equal ____, Proc.new { |arg| :abc }.call(1)
    assert_equal ____, Proc.new { |arg| arg }.call(1)
  end

  def test_environment_visibility
    skip
    val = 1
    assert_equal ____, Proc.new { val }.call
    assert_equal ____, Proc.new { |val| val }.call(2)
  end

  def test_modifying_environment
    skip
    val = 1
    Proc.new { val = 2 }.call
    assert_equal ____, val
  end

  def test_passing_arguments
    skip
    assert_equal ____, Proc.new { |n| n + 1 }.call(1)
    assert_equal ____, Proc.new { |n1, n2| n1 + n2 }.call(10, 3)
    assert_equal ____, Proc.new { |n1, n2| n1 + n2 }.call([10, 3])
  end

  def test_passing_blocks_as_arguments_1
    skip
    loud = Proc.new { |string| string.upcase }
    assert_equal ____, ["a", "b", "c"].map { |string| string.upcase }
    assert_equal ____, ["a", "b", "c"].map(&loud)
  end

  def test_passing_and_receiving_blocks_as_arguments
    skip
    invoker1 = Proc.new { |proc| proc.call }
    invoker2 = Proc.new { |&proc| proc.call }
    return_a = Proc.new { 'a' }
    assert_equal ____, invoker1.call(return_a)
    assert_equal ____, invoker2.call(&return_a)
  end
end
