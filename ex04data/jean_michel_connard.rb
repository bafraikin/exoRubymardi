def word_by_word(string)
  string.downcase!
  string = string.split("")
  index = 0
  b = ""
  string.each do | n |
    if n.ord >= 95 && n.ord <= 122
      index+=1
      next
    else
      break
    end
  end
  for nb in 0..(index-1)
    b += " " + string[nb]
  end
  b = b.split
  b = b.join
end

def jean_michel_data(string, array)
  string = string.split(" ")

  b = [[]]
  index = 0
  array.each do | mot|
    nombre = 0
    string.each do | dick |
      dick = word_by_word(dick)
      if mot == dick 
        nombre += 1
      end
    end
    if nombre == 0
      next
    else
      b[index] = [mot,nombre]
      index += 1
    end
  end
    b
end

dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
p jean_michel_data("Howdy partner, sit down! How's it going?", dictionnary)

