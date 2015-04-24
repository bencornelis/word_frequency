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
end
