def string_rotation(str1, str2)
  return str1.length == str2.length && (str1 + str2).include?(str2)
end
puts string_rotation("ABCD","CDAB")


def find_all_string_rotation(str)
  (str.length).times do
    puts str
    str = str[1..str.length] + str[0].chr
  end
end
find_all_string_rotation("ABCD")

def collect_string_rotation(str)
  (0...str.length).collect{|i| (str * 2)[i, str.length]}
end
p collect_string_rotation("ABCD")

class String
  def rotations
    Enumerator.new do|y|
      times = 0
      chars = split('')

      begin
        y.yield chars.join('')

        chars.push chars.shift
        times += 1
      end while times < chars.length
    end
  end
end
"abcd".rotations.each {|r| puts r}

s = "hello"
p (s + s).split('').each_cons(s.size).map(&:join)[0..-2]
