class String
  define_method(:word_frequency) do |search_word|
    if search_word.==(self)
      1
    else
      0
    end
  end
end
