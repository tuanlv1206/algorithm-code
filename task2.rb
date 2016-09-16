class Solution
  def solution(array)
    a = array.reduce(:+)
    m= a / array.length
    maxDev =0
    max = 0
    array.each do |a|
      dev = (a-m).abs
      if (dev > maxDev)
        maxDev = dev
        max = a
      end
    end
    array.index(max)
  end
end

puts Solution.new.solution([9, 4, -3, -10])
