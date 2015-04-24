class String
  define_method(:word_frequency) do |search_word|

    punctuations = ['.', ',', ';', ':', '!', '?', '(', ')', '/']
    sentence_chars = self.split('')
    letters_and_spaces = []
    sentence_chars.each() do |char|
      if !punctuations.include?(char)
        letters_and_spaces.push(char)
      end
    end

    word_freq = 0
    words = letters_and_spaces.join().downcase().split()
    words.each() do |word|
      if word.==(search_word)
        word_freq += 1
      end
    end
    word_freq

  end
end
