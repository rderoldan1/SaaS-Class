
def palindrom?(string)
  string.gsub!(/\W|\_/,"").downcase
  string == string.reverse
end

def count_words(string)
  hash = {}
  temp = string.gsub!(/\W|\_/," ").squeeze.split(" ")
  temp.each do |word|
    hash[word] = temp.count(word)
  end
  hash
end


