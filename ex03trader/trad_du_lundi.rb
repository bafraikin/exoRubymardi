  benef = 0
def trader_du_lundi(array) 

  elem = [:GOO , :MMM , :ADBE , :EA , :BA , :KO , :XOM , :GPS , :MCD , :DIS , :CRM , :JNJ ] 

  for action in elem do     #cette boucle for va faire contenir dans action ":GOO" et autre action

    jours_achat = 0       #meilleur jour de revente trouvé
    jours_revente = 0     #meilleur jour d'achat trouvé
    benef = 0             #meilleur benef trouvé
    for jours in 0..6 do    #parcours de toute la semaine 
      prix = array[jours][action]  #fixe le prix de la journée dans une variable pour etre plus lisible
      for jours2 in (jours + 1)..6 do   #reparcours de la semaine mais en partant du jour où est la 1ere boucle (je ne peux pas vendre avant d'acheter ) 
        if (array[jours2][action] - prix) > benef # si le prix de la 2eme boucle - celui de la 1ere donne un meilleur benef que celui deja trouvé 
          benef = array[jours2][action] - prix   #alors on enregistre toutes les coordonnés
          jours_achat = jours                 #le jours d'achat qui a donné ce benef
          jours_revente = jours2          # celui de la revente
        else
          next     # sinon on change de jours ( on parle de la 2eme boucle ici)
        end
      end
    end
    jours_achat+=1 #on ne peut pas dire qu'on achete au jours 0
    jours_revente+=1 
    puts "pour #{action} achat le jours #{jours_achat} puis revente le jours #{jours_revente}" #on affiche le resultat
    p [jours_achat, jours_revente] 
  end
end




jour_1 = { :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :DIS => 15, :CRM => 6, :JNJ => 10 }
jour_2 = { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :DIS => 9, :CRM => 10, :JNJ => 17 }
jour_3 = { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, :DIS => 18, :CRM => 5, :JNJ => 14 }
jour_4 = { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, :DIS => 15, :CRM => 18, :JNJ => 3 }
jour_5 = { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :DIS => 3, :CRM => 7, :JNJ => 9 }
jour_6 = { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :DIS => 9, :CRM => 8, :JNJ => 15 }
jour_7 = { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9, :JNJ => 17 }

b = [jour_1,jour_2, jour_3, jour_4, jour_5, jour_6, jour_7]

trader_du_lundi(b)

