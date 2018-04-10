def trader_du_dimanche(array)

  index_achat = 0
  index_revente = 0
  benef = 0

  array.each_with_index do | prix, index|
    for index2 in (index+1)...(array.size) do
      if (array[index2] - prix) > benef
        benef = array[index2] - prix
        index_achat = index
        index_revente = index2
      else
        next
      end
    end
  end
  puts "achat le jours #{index_achat} puis revente le jours #{index_revente}"
 [index_achat, index_revente]
end

b = [17,3,6,9,15,8,6,1,10]
p trader_du_dimanche(b)

