def combine_two_string(str1, str2, str3)
  if str1.length + str2.length != str3.length
    return false
  end
  return is_combine_two_string(str1, str2, str3)
end

def is_combine_two_string(str1, str2, str3)
  if str3.nil?
    return true
  end
  if str1[0] != str3[0] && str2[0] != str3[0]
    return false
  end
  if str1[0] == str3[0] && is_combine_two_string(str1.slice(1,str1.length-1), str2, str3.slice(1,str3.length-1))
    return true
  end
  if str2[0] == str3[0] && is_combine_two_string(str1, str2.slice(1,str2.length-1), str3.slice(1,str3.length-1))
    return true
  end
  return false
end
p combine_two_string("abck", "def", "dabecfk")

# def best_combine_two_string(str1, str2, str3)
#   if str1.length + str2.length != str3.length
#     return false
#   end
#   return best_is_combine_two_string(str1, str2, str3)
# end
# def best_is_combine_two_string(str1, str2, str3)
#   if str3.length == 0
#     return true
#   end
#   new_str3 = str3.slice(1,str3.length - 1)
#   if str1[0] == str3[0]
#     if str2[0] == str3[0]
#       return best_is_combine_two_string(str1.slice(1, str1.length - 1),str2, new_str3) || best_is_combine_two_string(str1, str2.slice(1, str2.length - 1), new_str3)
#     end
#     return best_is_combine_two_string(str1.slice(1, str1.length - 1), str2, new_str3)
#   end
#   if str2[0] == str3[0]
#     return best_is_combine_two_string(str1, str2.slice(1, str2.length - 1), new_str3)
#   end
#   return false
# end
# p best_combine_two_string("abck", "def", "dabecfk")
