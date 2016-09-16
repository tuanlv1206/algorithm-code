def caesar_cipher(arr,k)
  letter = ("A".."Z").to_a
  for i in (0..arr.length-1)
    if letter.include?(arr[i])
      arr[i] = letter[letter.index(arr[i])-k]
    end
  end
  arr
end
plain_text = "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"
p caesar_cipher(plain_text,4)

# echo -e '1\n2\n3\n4\nX' | wc -l
add_two = Proc.new{|x| x+2}
p add_two.call(3)

add_two_lambda = lambda {|x| x+2}
p add_two_lambda.call(3)

add_two_lam = ->(x){x+2}
p add_two_lam.call(3)
