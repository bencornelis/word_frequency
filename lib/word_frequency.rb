class String
  define_method(:word_frequency) do |search_word|
    words = self.split()
    first_word = words[0]
    second_word = words[1]
    word_freq = 0
    if first_word.==(search_word)
      word_freq += 1
    end
    if second_word.==(search_word)
      word_freq += 1
    end
    word_freq
  end
end
