def initial_energy_require(arr)
  n = arr.length
  initial = 0
  curr_energy = 0
  check = true
  for i in (0..n-1)
    curr_energy += arr[i]
    if curr_energy < 0
      initial += 1 + curr_energy.abs
      curr_energy = 1
      check = false
    end
  end
  if check
    initial = 1
  end
  initial
end
p initial_energy_require([4, -10, 4, 4, 4])
p initial_energy_require([3, 5, 2, 6, 1])
p initial_energy_require([-1, -5, -9])
