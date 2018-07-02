require 'minitest/autorun'
require 'minitest/pride'

class HashTest < Minitest::Test
  def test_empty
    assert ({}).empty?
    refute ({"a" => "apple"}).empty?
  end

  def test_access
    skip
    ages = {16 => ["Alice", "Bob"], 24 => ["Charlie", "Dave"], 37 => ["Eve"]}

    assert_equal ____, ages[16]
    assert_equal ____, ages[37]
  end

  def test_access_with_symbols
    skip
    ages = {
      siblings: ["Alice", "Bob"],
      brothers: ["Charlie", "Dave"],
      only_child: ["Eve"]
    }

    assert_equal ____, ages[:siblings]
    assert_equal ____, ages[:only_child]
  end

  def test_hash_alternative_symbol_assignment
    skip
    new_restaurants = {
      "cultura": "Latin American",
      "wallys": "Wisconsin treats",
      "hickory_ash": "Colorado-centric"
      }

    assert_equal ____, new_restaurants[:"cultura"]
    assert_equal ____, new_restaurants[:"wallys"]
    assert_equal ____, new_restaurants[:"hickory_ash"]
  end

  def test_assignment
    skip
    stuff = {"a" => ["aardvark", "apple"], "b" => ["butcher", "ballerina"]}
    stuff["c"] = ["cook", "caramel candy"]
    stuff["b"] = "brandy"
    stuff["a"] = stuff["a"] + ["apricot"]

    assert_equal ____, stuff["a"]
    assert_equal ____, stuff["b"]
    assert_equal ____, stuff["c"]
  end

  def test_assignment_with_symbols
    skip
    plants = {
      dahlia: ["Crichton Honey", "Whimsey", "Kasasagi"],
      hollyhock: ["Chater's Salmon Queen", "Blackberry"]}
    plants[:snapdragon] = ["Black Prince", "Madame Butterfly"]
    plants[:hollyhock] = ["Majorette Mix"]
    plants[:dahlia] += ["Jitterbug"]

    expected_dahlias = ["Crichton Honey", "Whimsey", "Kasasagi", "Jitterbug"]

    assert_equal ____, plants[:dahlia]
    assert_equal ____, plants[:snapdragon]
    assert_equal ____, plants[:hollyhock]
  end

  def test_keys
    skip
    assert_equal ____, {}.keys
    assert_equal ____, {1 => "one", 2 => "two"}.keys
    assert_equal ____, {"a" => "apple", "banana" => "b"}.keys
  end

  def test_keys_with_symbols
    skip
    assert_equal ____, {france: "Paris", lithuania: "Vilnius"}.keys
    assert_equal ____, {forks: 10, spoons: 20}.keys
  end

  def test_values
    skip
    assert_equal ____, {}.values
    assert_equal ____, {1 => "one", 2 => "two"}.values
    assert_equal ____, {"a" => "apple", "banana" => "b"}.values
  end

  def test_values_with_symbols
    skip
    assert_equal ____, {france: "Paris", lithuania: "Vilnius"}.values
    assert_equal ____, {forks: 10, spoons: 20}.values
  end

  def test_include
    skip
    boolean = {}.include?("a")
    maybe boolean
    boolean = {"a" => "apple"}.include?("a")
    maybe boolean
    boolean = {"a" => "apple"}.include?("apple")
    maybe boolean
  end

  def test_member
    skip
    boolean = {}.member?("a")
    maybe boolean
    boolean = {"a" => "apple"}.member?("a")
    maybe boolean
    boolean = {"a" => "apple"}.member?("apple")
    maybe boolean
  end

  def test_key
    skip
    boolean = {}.key?("a")
    maybe boolean
    boolean = {"a" => "apple"}.key?("a")
    maybe boolean
    boolean = {"a" => "apple"}.key?("apple")
    maybe boolean
  end

  def test_member_and_include_and_key_with_symbols_and_strings
    skip
    boolean = {}.include?(:cake)
    maybe boolean
    boolean = {cake: "yummy"}.include?(:cake)
    maybe boolean
    boolean = {"cake": "yummy"}.member?("cake")
    maybe boolean
    boolean = {"cake": "yummy"}.member?(:cake)
    maybe boolean
    boolean = {cake: "yummy"}.key?(:cake)
    maybe boolean
    boolean = {cake: "yummy"}.include?("yummy")
    maybe boolean
    boolean = {cake: "yummy"}.member?("yummy")
    maybe boolean
    boolean = {"cake": "yummy"}.key?("yummy")
    maybe boolean
  end

  def test_invert
    skip
    h1 = {"a" => "apple", "b" => "banana"}.invert
    h2 = {1 => "one", 2 => "two"}.invert

    expected_h1 = {"apple" => "a", "banana" => "b"}
    expected_h2 = {"one" => 1, "two" => 2}

    assert_equal ____, h1
    assert_equal ____, h2
  end

  def test_invert_with_symbols
    skip
    food_colors = {beets: "purple", kiwis: "green"}.invert
    foods_with_many_colors = {
      apples: ["green", "red", "yellow"],
      potatoes: ["brown", "red", "purple"]
    }.invert

    expected_food_colors = {"purple" => :beets, "green" => :kiwis  }
    expected_foods_with_many_colors = { ["green", "red", "yellow"] => :apples, ["brown", "red", "purple"] => :potatoes}

    assert_equal ____, food_colors
    assert_equal ____, foods_with_many_colors
  end

  def test_length
    skip
    assert_equal ____, {}.length
    assert_equal ____, {"a" => "apple"}.length
    assert_equal ____, {"a" => "apple", "b" => "banana", "c" => "cantaloupe"}.length
  end

  def test_merge
    skip
    h1 = {}.merge({})
    apple = {"a" => "apple"}
    h2 = {}.merge(apple)
    h3 = apple.merge({"b" => "banana"})
    h4 = apple.merge({"a" => "avocado", "b" => "banana"})
    h5 = {"a" => "apple", "b" => "banana"}.merge({"b" => "breadfruit"})

    expected_h1 = {}
    expected_h2 = {"a" => "apple"}
    expected_apple = {"a" => "apple"}
    expected_h3 = {"a" => "apple", "b" => "banana"}
    expected_h4 = {"a" => "avocado", "b" => "banana"}
    expected_h5 = {"a" => "apple", "b" => "breadfruit"}

    assert_equal ____, h1
    assert_equal ____, h2
    assert_equal ____, apple
    assert_equal ____, h3
    assert_equal ____, h4
    assert_equal ____, h5
  end

  def test_merge_with_symbols
    skip
    new_restaurants = {cultura: "Latin American", wallys: "Wisconsin treats"}
    favorite_restaurants = {}.merge(new_restaurants)
    name_lengths = {maeby: 5}.merge({selena: 6})
    saturn = {saturn: 7}
    planet_rings = saturn.merge({jupiter: 3, uranus: 13, neptune: 6})
    battlestar_characters = {battlestar: ["Starbuck", "Apollo", "Boomer"]}
    futurama_characters = {futurama: ["Fry", "Leela", "Bender", "Zoidberg"]}
    tv_characters = battlestar_characters.merge(futurama_characters)
    tv_characters = tv_characters.merge({breaking_bad: "Walter White"})
    shape_sides = {circle: 1}.merge({square: 4, circle: "infinite"})

    expected_favorite_restaurants = {cultura: "Latin American", wallys: "Wisconsin treats"}
    expected_name_lengths = {maeby: 5, selena: 6}
    expected_planet_rings = {saturn: 7, jupiter: 3, uranus: 13, neptune: 6}
    expected_saturn = {saturn: 7}
    expected_tv_characters = {battlestar: ["Starbuck", "Apollo", "Boomer"], futurama: ["Fry", "Leela", "Bender", "Zoidberg"], breaking_bad: "Walter White"}
    expected_shape_sides = {circle: "infinite", square: 4}

    assert_equal ____, favorite_restaurants
    assert_equal ____, name_lengths
    assert_equal ____, planet_rings
    assert_equal ____, saturn
    assert_equal ____, tv_characters
    assert_equal ____, shape_sides
  end

  def test_update
    skip
    h1 = {}.update({})
    apple = {"a" => "apple"}
    h2 = {}.update(apple)
    h3 = apple.update({"b" => "banana"})
    h4 = apple.update({"a" => "avocado", "b" => "banana"})
    h5 = {"a" => "apple", "b" => "banana"}.update({"b" => "breadfruit"})

    expected_h1 = {}
    expected_h2 = {"a" => "apple"}
    expected_apple = {"a" => "avocado", "b" => "banana"}
    expected_h3 = {"a" => "avocado", "b" => "banana"}
    expected_h4 = {"a" => "avocado", "b" => "banana"}
    expected_h5 = {"a" => "apple", "b" => "breadfruit"}

    assert_equal ____, h1
    assert_equal ____, h2
    assert_equal ____, apple
    assert_equal ____, h3
    assert_equal ____, h4
    assert_equal ____, h5
  end

  def test_update_with_symbols
    skip
    new_restaurants = {"cultura": "Latin American", "wallys": "Wisconsin treats"}
    favorite_restaurants = {}.update(new_restaurants)
    name_lengths = {maeby: 5}.update({selena: 6})
    name_lengths_2 = {maeby: 5}.update({selena: 6, "maeby": 5})
    saturn = {saturn: 7}
    planet_rings = saturn.update({jupiter: 3, uranus: 13, neptune: 6})
    battlestar_characters = {battlestar: ["Starbuck", "Apollo", "Boomer"]}
    futurama_characters = {futurama: ["Fry", "Leela", "Bender", "Zoidberg"]}
    tv_characters = battlestar_characters.update(futurama_characters)
    tv_characters.update({breaking_bad: "Walter White"})
    shape_sides = {circle: 1}.update({square: 4, "circle": "infinite"})

    expected_favorite_restaurants = {"cultura": "Latin American", "wallys": "Wisconsin treats"}
    expected_name_lengths = {maeby: 5, selena: 6}
    expected_name_lengths_2 = {"maeby": 5, selena: 6}
    expected_planet_rings = {saturn: 7, jupiter: 3, uranus: 13, neptune: 6}
    expected_saturn = {saturn: 7, jupiter: 3, uranus: 13, neptune: 6}
    expected_tv_characters = {battlestar: ["Starbuck", "Apollo", "Boomer"], futurama: ["Fry", "Leela", "Bender", "Zoidberg"], breaking_bad: "Walter White"}
    expected_shape_sides = {"circle": "infinite", square: 4}

    assert_equal ____, favorite_restaurants
    assert_equal ____, name_lengths
    assert_equal ____, name_lengths_2
    assert_equal ____, planet_rings
    assert_equal ____, saturn
    assert_equal ____, tv_characters
    assert_equal ____, shape_sides
  end
end
