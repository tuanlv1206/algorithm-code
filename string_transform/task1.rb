class String_changer

  attr_accessor :str

  def initialize(str)
    @str = str
    @rules = {
    "AB" => "AA",
    "BA" => "AA",
    "CB" => "CC",
    "BC" => "CC",
    "AA" => "A",
    "CC" => "C"
    }
  end

  def change_str_one_time
    wtc = what_can_be_changed_in_str
    if wtc
      @str = @str.sub wtc, @rules[wtc]

    end
  end

  def what_can_be_changed_in_str
    result = false
    @rules.keys.each do |key|
      if @str.include?(key)
        result = key
        puts result
      end
    end
    puts "------"
    result
  end

  def change_cycle
    while what_can_be_changed_in_str.class == String do
      change_str_one_time
    end
  end

end

def solution(s)
str = String_changer.new s
str.change_cycle
str.str
end

puts solution("ABBCC")
