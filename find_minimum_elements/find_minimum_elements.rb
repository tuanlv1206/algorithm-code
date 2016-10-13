def find_minimum_elements(arr)
  n = arr.length
  r_count, b_count, g_count = 0, 0, 0
  for i in (0..n-1)
    r_count += 1 if arr[i] == "R"
    b_count += 1 if arr[i] == "B"
    g_count += 1 if arr[i] == "G"
  end
  return n if r_count == n || b_count == n || g_count == n
  return 2 if r_count%2 == 0 && b_count%2==0 && g_count%2==0
  return 2 if r_count%2 == 1 && b_count%2==1 && g_count%2==1
  return 1
end
p find_minimum_elements(["R", "G"])
p find_minimum_elements(["R", "G", "B"])
p find_minimum_elements(["R", "R", "R"])
p find_minimum_elements(["R", "R", "G", "B"])
p find_minimum_elements(["R", "G", "R", "G"])
p find_minimum_elements(["R", "G", "B", "B", "G", "R"])
p find_minimum_elements(["R", "R", "B", "B", "G"])
p find_minimum_elements(%w{R R B B G})
p find_minimum_elements(%w{R R B B G G G G})
