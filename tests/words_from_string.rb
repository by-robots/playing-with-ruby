require_relative '../words_from_string'
require 'test/unit'

class TestWordsFromString < Test::Unit::TestCase
  def test_empty_string
    assert_equal([], words_from_string(''))
    assert_equal([], words_from_string('     '))
  end

  def test_single_words
    assert_equal(['cat'], words_from_string('cat'))
    assert_equal(['dog'], words_from_string('     dog     '))
  end

  def test_many_words
    assert_equal(['you\'re', 'not', 'my', 'supervisor'], words_from_string('You\'re not my supervisor'))
  end

  def test_ignores_punctuation
    assert_equal(%w[the cat's mat], words_from_string('&the& cat\'s, ~mat~'))
  end
end
