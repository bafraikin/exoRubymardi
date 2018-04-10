
class String
  def chiffre_de_cesar(nb=5)
    a = self.split("").collect do |char|
      if char.ord >= 65 && char.ord <= 90
        ((((char.ord - 'A'.ord) + nb) % 26) + 'A'.ord).chr
      elsif char.ord >=97 && char.ord <=122
        ((((char.ord - 'a'.ord + nb)) % 26) + 'a'.ord).chr
      else
        char
      end
    end
    a.join("")
  end 
end

puts "What a string!".chiffre_de_cesar(5)
