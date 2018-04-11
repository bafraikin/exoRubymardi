
#'*n' comme ça si on me donne plus de 2 valeurs dont je dois calculer la somme je peux le faire, cela me donne un tableau sur n
def sum_multiple(nb, *n) 
  rslt = 0 
  for index in 1...nb
    n.each {| beta | ( index % beta == 0) ? (rslt+=index ; break) :  next } #sacré ligne celle ci, c'est un each en une ligne
  end                                                                       #le '?' indique que j'utilise la methode ternaire
  rslt                                                                      #donc si oui j'ajoute index à resultat et je break pour passer
end                                                                         #directement au tour suivant sans qu'il test une autre valeurs 
                                                                            #de mon tableau 'n'.
p sum_multiple(1000, 3,5)                                                   # sinon 'next' je vais à la prochaine iteration de la boucle
                                                                            # et paf
