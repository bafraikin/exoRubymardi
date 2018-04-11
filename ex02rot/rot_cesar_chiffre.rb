
class String
  def chiffre_de_cesar(nb=5)
    a = self.split("").collect do |char| # la class String est une class qui peut etre appliqué à n'importe quel string
      if char.ord >= 65 && char.ord <= 90   # en appelant 'self' j'appelle la string sur laquel on applique la methode 
        ((((char.ord - 'A'.ord) + nb) % 26) + 'A'.ord).chr  # je split("") ce qui fait que je cree un tableau avec tout les caractere 1par1 
      elsif char.ord >=97 && char.ord <=122                 # ensuite je test pour savoir si le char est une min ou maj
        ((((char.ord - 'a'.ord + nb)) % 26) + 'a'.ord).chr    #je rotate du nombre de caractere ( compliqué à expliquer par ecrit)
      else                                                    #puis pouf c'est fini
        char
      end
    end
    a.join("")
  end 
end

puts "What a string!".chiffre_de_cesar(5)
