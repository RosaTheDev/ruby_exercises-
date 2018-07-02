gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

class ArrayTest < Minitest::Test
  def test_empty
    maybe [].empty?
    maybe [1,2,3].empty?
  end

  def test_first
    # skip
    assert_equal ____, [].first
    assert_equal ____, [:a, :b, :c].first
    assert_equal ____, ["spoon"].first
  end

  def test_last
    # skip
    assert_equal ____, [].last
    assert_equal ____, [:a, :b, :c].last
    assert_equal ____, ["spoon"].last
  end

  def test_access
    # skip
    assert_equal ____, [][0]
    assert_equal ____, ["a", "b", "c"][0]
    assert_equal ____, ["a", "b", "c"][1]
    assert_equal ____, ["a", "b", "c"][-1]
    assert_equal ____, ["a", "b", "c"][-2]
    assert_equal ____, ["a", "b", "c"][4]
  end

  def test_index
    # skip
    assert_equal ____, ["a", "b", "c"].index("a")
    assert_equal ____, ["a", "b", "c"].index("b")
    assert_equal ____, ["a", "b", "c"].index("c")
    assert_equal ____, ["a", "b", "c"].index("d")
  end

  def test_join
    # skip
    assert_equal ____, [].join
    assert_equal ____, [].join(' ')
    assert_equal ____, [].join(' - ')
    assert_equal ____, [].join(' and ')
    assert_equal ____, ["a", "b", "c"].join
    assert_equal ____, ["a", "b", "c"].join("")
    assert_equal ____, ["a", "b", "c"].join(" ")
    assert_equal ____, ["a", "b", "c"].join(" - ")
    assert_equal ____, ["a", "b", "c"].join(" and ")
  end

  def test_length
    # skip
    assert_equal ____, [].length
    assert_equal ____, [:a].length
    assert_equal ____, [:a, :b].length
    assert_equal ____, [:a, :b, :c].length
  end

  def test_reverse
    # skip
    assert_equal ____, [1, 2, 3].reverse
    assert_equal ____, [:a, :b, :c].reverse
  end

  def test_take
    # skip
    assert_equal [], [].take(1)
    assert_equal [], [].take(2)
    assert_equal ["a","b","c"], ["a", "b", "c", "d", "e"].take(3)

    words = ["fish", "boy", "pumpkin", "flower"]
    assert_equal [____, words.take(2)
    assert_equal ____, words
  end

  def test_plus
    # skip
    a1 = [] + []
    a2 = [] + [:a]
    a3 = [:a] + [:b]
    a4 = [:a, :b] + [:b, :c]

    assert_equal ____, a1
    assert_equal ____, a2
    assert_equal ____, a3
    assert_equal ____, a4
  end

  def test_concat
    # skip
    assert_equal ____, [].concat([:a])
    assert_equal ____, [:a].concat([:b])
    assert_equal ____, [:a, :b].concat([:b, :c])
  end

  def test_shovel
    # skip
    a1 = [] << []
    a2 = [] << nil
    a3 = [] << :a
    a4 = [:a] << :b
    a5 = [:a, :b] << :c
    a6 = [:a, :b] << :b

    assert_equal ____, a1
    assert_equal ____, a2
    assert_equal ____, a3
    assert_equal ____, a4
    assert_equal ____, a5
    assert_equal ____, a6
  end

  def test_minus
    # skip
    a1 = [] - []
    a2 = [:a] - []
    a3 = [:a, :b, :c] - [:a]
    a4 = [:a, :b, :c] - [:a, :b]
    a5 = [:a, :b, :a, :c, :a] - [:a]

    assert_equal ____, a1
    assert_equal ____, a2
    assert_equal ____, a3
    assert_equal ____, a4
    assert_equal ____, a5
  end

  def test_pipe
    # skip
    a1 = [] | []
    a2 = [] | [:a]
    a3 = [:a] | [:b]
    a4 = [:a, :b] | [:b, :c]
    a5 = [:a, :b, :b] | [:b, :b, :c]

    assert_equal ____, a1
    assert_equal ____, a2
    assert_equal ____, a3
    assert_equal ____, a4
    assert_equal ____, a5
  end

  def test_ampersand
    # skip
    a1 = [] & []
    a2 = [] & [:a]
    a3 = [:a] & [:b]
    a4 = [:a, :b] & [:b, :c]
    a5 = [:a, :b, :b] & [:b, :b, :c]

    assert_equal ____, a1
    assert_equal ____, a2
    assert_equal ____, a3
    assert_equal ____, a4
    assert_equal ____, a5
  end

  class Wrapper
    attr_reader :value
    def initialize(value)
      @value = value
    end

    def inspect
      "#<Wrapper #{object_id}>"
    end
  end

  def test_intersection_of_objects
    # skip
    a = Wrapper.new(:a)
    b = Wrapper.new(:b)
    b1 = Wrapper.new(:b)
    b2 = Wrapper.new(:b)
    c = Wrapper.new(:c)

    a1 = [a, b] & [b, c]
    a2 = [a, b1] & [b2, c]
    a3 = [a, b1, b2] & [b1, b2, c]

    assert_equal ____, a1
    assert_equal ____, a2
    assert_equal ____, a3
  end

  def test_uniq
    # skip
    assert_equal ____, [].uniq
    assert_equal ____, [:a].uniq
    assert_equal ____, [:a, :a, :a, :b].uniq
  end

  def test_push
    # skip
    assert_equal ____, [].push(:a)
    assert_equal ____, [].push(nil)
    assert_equal ____, [].push([])
    assert_equal ____, [:a].push(:b)
    assert_equal ____, [:a, :b].push(:c)
    assert_equal ____, [1, "apple", :c].push(["fish", 7, :x])
  end

  def test_shift
    # skip
    assert_equal ____, [].shift
    assert_equal ____, [:a].shift
    assert_equal ____, [:a, :b].shift
  end

  def test_pop
    # skip
    assert_equal ____, [].pop
    assert_equal ____, [:a].pop
    assert_equal ____, [:a, :b].pop
  end

  def test_unshift
    # skip
    assert_equal ____, [].unshift(:a)
    assert_equal ____, [].unshift(nil)
    assert_equal ____, [].unshift([])
    assert_equal ____, [:a].unshift(:b)
    assert_equal ____, [:a, :b].unshift(:c)
    assert_equal ____, [1, "apple", :c].unshift(["fish", 7, :x])
  end

  def test_parallel_assignment
    # skip
    fruit = ["apple", "banana", "cherry", "dewberry"]

    a, b, c, d = fruit
    assert_equal ____, a
    assert_equal ____, b
    assert_equal ____, c
    assert_equal ____, d

    a, b = fruit
    assert_equal ____, a
    assert_equal ____, b

    a, *b = fruit
    assert_equal ____, a
    assert_equal ____, b

    *a, b = fruit
    assert_equal ____, a
    assert_equal ____, b

    a, b, *c = fruit
    assert_equal ____, a
    assert_equal ____, b
    assert_equal ____, c

    *a, b, c = fruit
    assert_equal ____, a
    assert_equal ____, b
    assert_equal ____, c

    a, *b, c = fruit
    assert_equal ____, a
    assert_equal ____, b
    assert_equal ____, c
  end

  def test_delete
    # skip
    protein = ["fish", "bacon", "chicken", "bacon", "bacon", "steak"]

    deleted = protein.delete("fish")
    assert_equal ____, deleted
    assert_equal ____, protein

    deleted = protein.delete("bacon")
    assert_equal ____, deleted
    assert_equal ____, protein
  end

  def test_delete_at
    # skip
    veggies = ["carrot", "parsnip", "courgette"]
    veggie = veggies.delete_at(1)
    assert_equal ____, veggie
    assert_equal ____, veggies
  end

  def test_compact
    # skip
    assert_equal ____, ["a", "b", "c"].compact
    assert_equal ____, ["a", nil, "b", "c", nil, nil].compact
    assert_equal ____, [nil].compact
  end

  def test_flatten
    skip
    assert_equal ____, [:a, :b, :c].flatten
    assert_equal ____, [:a, [:b, :c]].flatten
    assert_equal ____, [:a, [:b, [:c]], [:d], :e, [:f, :g]].flatten
  end

  # Uhm. Halp?
  def test_shuffle
    skip
    # Go try this in IRB a few times
    # ["a", "b", "c", "d"].shuffle
  end

  def test_sample
    skip
    # Go try this in IRB a few times
    # ["a", "b", "c", "d"].sample
  end
end
