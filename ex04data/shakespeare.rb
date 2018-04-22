
#Ce programme decompose l'integrale de shakespeare ligne par ligne puis passe ensuite en revu l'entierté du dictionnaire afin de compter les mots qu'il y a dans cette ligne



#ce module reçoit une ligne et un mot du dictionnaire. 
#Il va compter chaque occurence du mot dans une ligne et le rajouter au hash

def count_word_in_line(ouane_line, word)

  count = 0                     #nombre de fois qu'on trouve le mot sur la Ligne
  index = 0                     #notre compteur 
  tmp = 0                                    #decompose la ligne en un   
  ouane_line = ouane_line.downcase.split("") #tableau de charactere.
  word = word.split("") # same : 'bob' deviendra ['b','o','b']

  while index < ouane_line.size 
    for nbr in 0...word.size
      if nbr == (word.size - 1) && word[nbr] == ouane_line[index]
        count +=1   #si on est arrivé à la fin du mot, on ajoute +1 à count
      end
      if word[nbr] == ouane_line[index]
        index +=1             #si la lettre est la meme on continue d'avancer et de voir si le mot correspond
        next
      else                    #sinon on avance d'un caractere dans la ligne
        break                   # au lieu d'avance d'un caractere dans le mot
      end
    end
    tmp +=1           #à la fin de la boucle 'for' je remet index à sa valeur d'origine ( elle a peut etre changé dans la boucle ) et lui fait + 1 pour  avancer au prochain caractere
    index = tmp
  end
  count     # retourne count
end



#on peut donner plusieur dictionnary j'ai enlevé l'autre dico mais il suffit de le rajouter et de mettre une autre boucle qui passe celui ci à ma fonction et ça marche pareil

def jean_michel_data(*dictionary) 
  count = Hash.new(0)
  nb_line = 0
  f = File.open("integrale.txt", "r") 
  f.each_line do |line|
    nb_line +=1
    puts "ça mouline #{nb_line}"  # affiche le nombre de ligne parcourus, il y a 128 000 ligne à faire
    dictionary[0].each do |word|
      count[:"#{word}"] += count_word_in_line(line, word)
    end
  end
  p count  # affichage du hash avec le compte fait
end


# tu peux mettre n'importe quel dictionnaire ça va fonctionner"
classic_dictionary =["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]


# le programme compte le dico standart en 1min 45
jean_michel_data(classic_dictionary)



