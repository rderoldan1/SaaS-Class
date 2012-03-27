
def combine_anagrams(words)
  hash = Hash.new
  words.each do |word|
    hash[word.downcase.sum] ||= []
    hash[word.downcase.sum] << word
  end
 hash.values
end


