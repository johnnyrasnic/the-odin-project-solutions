def fibs_rec(num)
  if num < 2
    return num
  else
    return fibs_rec(num-1) + fibs_rec(num - 2)
  end
end
