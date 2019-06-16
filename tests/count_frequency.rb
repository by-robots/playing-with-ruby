require_relative '../count_frequency'
require 'test/unit'

class TestCountFrequency < Test::Unit::TestCase
  def test_empty_list
    assert_equal({}, count_frequency([]))
  end

  # Thanks, Gwen Stefani
  def test_single_word
    assert_equal({ 'bananas' => 1 }, count_frequency(['bananas']))
  end

  def test_two_words
    assert_equal(
      { 'sterling' => 1, 'archer' => 1 },
      count_frequency(%w[sterling archer])
    )
  end

  def test_two_words_with_adjacent_repeat
    assert_equal({ 'cat' => 2, 'dog' => 1 }, count_frequency(%w[cat cat dog]))
  end

  def test_two_non_adjacent_words
    assert_equal(
      { 'cheese' => 2, 'burger' => 1 },
      count_frequency(%w[cheese burger cheese])
    )
  end
end
