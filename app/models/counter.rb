require_relative '../../app/models/normalize'

class Counter
  
  def countCharacters (word)
    map = Hash.new
    normalize = Normalize.new

    word_normalized = normalize.stringNormalized(word)
    word_normalized.each_char do |char|
      if map.key?(char)
        current_value = map["#{char}"]
        map["#{char}"] = current_value + 1
      else
        map["#{char}"] = 1
      end
    end
    return map
  end

end


