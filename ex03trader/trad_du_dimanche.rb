def trader_du_dimanche(array)

  index_achat = 0
  index_revente = 0
  benef = 0


  array.each_with_index do | prix, index| #boucle sur tout les elements du tableau
    for index2 in (index+1)...(array.size) do #boucle sur tout les elements du tableau en partant de là où la 1ere boucle est deja
      if (array[index2] - prix) > benef  # je verifie si les deux elements que l'on a dans nos variable produise un benefice plus important
        benef = array[index2] - prix   # si oui je stocke les informations dans des variables
        index_achat = index            
        index_revente = index2
      else
        next
      end
    end
  end
  puts "achat le jours #{index_achat} puis revente le jours #{index_revente}"
 [index_achat, index_revente]  # à la fin j'affiche mes variables qui contiennennt ce que j'y ai mis
end

b = [17,3,6,9,15,8,6,1,10]
p trader_du_dimanche(b)

