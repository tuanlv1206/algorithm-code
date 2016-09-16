def money_format(n)
  n = n.to_s.split('.')
  decimal = ''
  if n[1].nil?
    decimal = '00'
  else
    n[1].to_i.round
  end
  return in_format(n[0].to_i) +'.'+ decimal
end
def in_format(n)
  return n if n < 1000
  return 1000 if n%1000 == 0
  in_format(n/1000).to_s + ' ' + (n%1000).to_s
end

p money_format(2310000.159897)
p money_format(1600)
