class String
  define_method(:word_frequency) do |search_word|
    words = self.split()
    word_freq = 0
    words.each() do |word|
      if word.==(search_word)
        word_freq += 1
      end
    end
    word_freq
  end
end
