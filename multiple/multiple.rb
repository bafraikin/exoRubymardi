
def sum_multiple(nb, *n)
  rslt = 0
  for index in 1...nb
    n.each {| beta | ( index % beta == 0) ? (rslt+=index ; break) :  next }
  end
  rslt
end


p sum_multiple(1000, 3,5)
