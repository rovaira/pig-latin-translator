# Author: Rovaira Dasig | Launch Academy | Pig Latin Translator
# Date Submitted: 05.15.15

def translate(sentence)
  sentence.gsub(/\w+/) do |word|
    if word[0] =~ /[aeiou]/
      word << "way"
    else
      first_vowel = word.index(/[aeiou]/)
      word[first_vowel, word.length-first_vowel] << word[0, first_vowel] << "ay"
    end
  end
end

input = ARGV.join(" ")
puts translate(input)
