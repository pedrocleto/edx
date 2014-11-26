module FunWithStrings
  def palindrome?
   str=self.gsub(/[^A-Za-z]/, '')
   str.reverse.downcase == str.downcase 
  end
  def count_words
    count = {}
    self.downcase.gsub(/[^a-z0-9\s]/i, '').split.each {|word| count.store(word, count[word].to_i + 1)}
    return count
  end
  def anagram_groups
     self.downcase.split.group_by {|word| word.chars.sort}.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
  
end
