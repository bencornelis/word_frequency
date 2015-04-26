require('rspec')
require('word_frequency')

describe('String#word_frequency') do
  it('returns the frequency when the string and argument are one word') do
    expect('bird'.word_frequency('bird')).to(eq(1))
  end

  it('returns the frequency when the argument is a word different from the string') do
    expect('bird'.word_frequency('sparrow')).to(eq(0))
  end

  it('returns the frequency when the sentence is two words') do
    expect('The bird'.word_frequency('bird')).to(eq(1))
  end

  it('returns the frequency for a sentence with any number of words') do
    expect('one bird sang to another bird'.word_frequency('bird')).to(eq(2))
  end

  it('works for a sentence with punctuation') do
    expect('The bird, it is said, is a cool bird'.word_frequency('bird')).to(eq(2))
  end

  it('works when the sentence contains the word capitalized') do
    expect('Bird, bird, where are you Bird?'.word_frequency('bird')).to(eq(3))
  end

  it('works for any string of characters') do
    expect('birdbird bird, ;alksdbird;;'.word_frequency('bird')).to(eq(4))
  end
end
