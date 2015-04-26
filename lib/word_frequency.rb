class String
  define_method(:word_frequency) do |search_word|

    word_freq = 0
    if search_word.==('')
      return 0
    end

    search_start = 0
    search_end = search_word.length() - 1
    string_end = self.length() - 1

    until search_start.>(string_end)
      segment = self[search_start..search_end].downcase()
      if segment.==(search_word.downcase())
        word_freq += 1
        search_start += search_word.length()
        search_end += search_word.length()
      else
        search_start += 1
        search_end += 1
      end
    end
    word_freq

  end
end
