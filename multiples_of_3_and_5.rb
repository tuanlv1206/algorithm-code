def multiples_of_3_and_5(num)
  arr_mul = []
  (1...num).each do |num|
    if num%3==0 || num%5==0
      arr_mul.push(num)
    end
  end
  arr_mul.reduce(:+)
end
p multiples_of_3_and_5(10)
p multiples_of_3_and_5(1000)
