
def palindrom?(string)
  string.gsub!(/\W|\_/,"").downcase
  string == string.reverse
end

def count_words(string)
  hash = {}
  temp = string.gsub!(/\W|\_/," ").strip!.split(" ")
  temp.each do |word|
    hash[word] = temp.count(word)
  end
  puts hash
end
