class String
  define_method(:style_word) do |search_word, css_class|

    styled_word = "<span class='#{css_class}'>#{search_word}</span>"
    punctuations = ['.', ',', ';', ':', '!', '?', '(', ')', '/']

    words_with_punctuation = self.split()
    words_and_punctuations = []
    words_with_punctuation.each() do |word|
      punctuation = ''
      if punctuations.include?(word[-1])
        punctuation = word[-1]
        word = word[0...-1]
      end

      if word.==(search_word)
        words_and_punctuations.push(styled_word + punctuation)
      else
        words_and_punctuations.push(word + punctuation)
      end

    end

    styled_sentence = words_and_punctuations.join(' ')
    styled_sentence
    
  end
end
