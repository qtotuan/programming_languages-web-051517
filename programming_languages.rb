def reformat_languages(languages)
  hash = {}
  languages.each do |top_class, languages_hash|
    languages_hash.each do |language, type|
      if hash[language] == nil
        hash[language] = {:type => type[:type]}
      end

      if hash[language][:style] == nil
        hash[language][:style] = [top_class]
      else
        hash[language][:style] << top_class
      end
    end
  end
  hash
end
