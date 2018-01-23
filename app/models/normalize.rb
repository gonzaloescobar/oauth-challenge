require "active_support/inflector"

class Normalize

  def stringNormalized (word)
  	
  	word_normalized = word.tr!("!", "")
  	word_normalized = word.tr!("?", "")
    word_normalized = ActiveSupport::Inflector.transliterate(word)
 	word_normalized = word_normalized.downcase
 	   
    return word_normalized
  end


end