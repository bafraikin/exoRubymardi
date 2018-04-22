
def count_word_in_line(ouane_line, word)

  count = 0
  index = 0
  tmp = 0
  ouane_line = ouane_line.downcase.split("")
  word = word.split("")

  while index < ouane_line.size
    for nbr in 0...word.size
      if nbr == (word.size - 1) && word[nbr] == ouane_line[index]
        count +=1
      end
      if word[nbr] == ouane_line[index]
        index +=1
        next
      else
        break
      end
    end
    tmp +=1
    index = tmp
  end
  ouane_line = ouane_line.join("")
  count
end




def jean_michel_data(*dictionary)
  count = Hash.new(0)
  harsh = Hash.new(0)
  nb_line = 0
  f = File.open("integrale.txt", "r") 
  f.each_line do |line|
    nb_line +=1
    puts "ça mouline #{nb_line}"
    dictionary[0].each do |word|
      count[:"#{word}"] += count_word_in_line(line, word)
    end
=begin dictionary[1].each do |word|
      harsh[:"#{word}"] += count_word_in_line(line, word)
=end    end
  end
  p count
end

classic_dictionary =["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

 arsh ='pute'
arsh = arsh.split(" ")

jean_michel_data(classic_dictionary)

