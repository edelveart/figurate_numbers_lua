local multidimensional_figurate_numbers = {}

local function factorial_iter(num)
  local t = 1
  for i = 1, num do
    t = t * i
  end
  return t
end

local function rising_factorial(n, k)
  local t = 1
  for i = n, n + k - 1 do
    t = t * i
  end
  return t
end

local function binomial_coefficient(n, k)
  return factorial_iter(n) / (factorial_iter(k) * factorial_iter(n - k))
end

function multidimensional_figurate_numbers.pentatope_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      local pentatope_number = (delta * (delta + 1) * (delta + 2) * (delta + 3)) / 24
      coroutine.yield(pentatope_number)
    end
  end)
end

multidimensional_figurate_numbers.hypertetrahedral_numbers = multidimensional_figurate_numbers.pentatope_numbers
multidimensional_figurate_numbers.triangulotriangular_numbers = multidimensional_figurate_numbers.pentatope_numbers

function multidimensional_figurate_numbers.k_dimensional_hypertetrahedron_numbers(k)
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      local k_dimensional_hypertetrahedron_number = rising_factorial(delta, k) / factorial_iter(k)
      coroutine.yield(k_dimensional_hypertetrahedron_number)
    end
  end)
end

multidimensional_figurate_numbers.k_hypertetrahedron_numbers = multidimensional_figurate_numbers
    .k_dimensional_hypertetrahedron_numbers
multidimensional_figurate_numbers.regular_k_polytopic_numbers = multidimensional_figurate_numbers
    .k_dimensional_hypertetrahedron_numbers
multidimensional_figurate_numbers.figurate_numbers_of_order_k = multidimensional_figurate_numbers
    .k_dimensional_hypertetrahedron_numbers

function multidimensional_figurate_numbers.five_dimensional_hypertetrahedron_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield(rising_factorial(delta, 5) / factorial_iter(5))
    end
  end)
end

function multidimensional_figurate_numbers.six_dimensional_hypertetrahedron_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield(rising_factorial(delta, 6) / factorial_iter(6))
    end
  end)
end

function multidimensional_figurate_numbers.binomial_coefficient_k_dimensional_hypertetrahedron_numbers(k)
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      local result = binomial_coefficient(delta + (k - 1), k)
      coroutine.yield(result)
    end
  end)
end

function multidimensional_figurate_numbers.biquadratic_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield(delta ^ 4)
    end
  end)
end

function multidimensional_figurate_numbers.k_dimensional_hypercube_numbers(k)
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield(delta ^ k)
    end
  end)
end

multidimensional_figurate_numbers.k_hypercube_numbers = multidimensional_figurate_numbers
    .k_dimensional_hypercube_numbers

function multidimensional_figurate_numbers.five_dimensional_hypercube_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield(delta ^ 5)
    end
  end)
end

function multidimensional_figurate_numbers.six_dimensional_hypercube_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield(delta ^ 6)
    end
  end)
end

function multidimensional_figurate_numbers.hypoctahedral_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((delta ^ 2 * (delta ^ 2 + 2)) / 3)
    end
  end)
end

multidimensional_figurate_numbers.hexadecachoron_numbers = multidimensional_figurate_numbers.hypoctahedral_numbers
multidimensional_figurate_numbers.four_cross_polytope_numbers = multidimensional_figurate_numbers.hypoctahedral_numbers
multidimensional_figurate_numbers.four_orthoplex_numbers = multidimensional_figurate_numbers.hypoctahedral_numbers


function multidimensional_figurate_numbers.hypericosahedral_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((delta * (145 * delta ^ 3 - 280 * delta ^ 2 + 179 * delta - 38)) / 6)
    end
  end)
end

multidimensional_figurate_numbers.tetraplex_numbers = multidimensional_figurate_numbers.hypericosahedral_numbers
multidimensional_figurate_numbers.polytetrahedron_numbers = multidimensional_figurate_numbers.hypericosahedral_numbers
multidimensional_figurate_numbers.hexacosichoron_numbers = multidimensional_figurate_numbers.hypericosahedral_numbers

function multidimensional_figurate_numbers.hyperdodecahedral_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((delta * (261 * delta ^ 3 - 504 * delta ^ 2 + 283 * delta - 38)) / 2)
    end
  end)
end

multidimensional_figurate_numbers.hecatonicosachoron_numbers = multidimensional_figurate_numbers
    .hyperdodecahedral_numbers
multidimensional_figurate_numbers.dodecaplex_numbers = multidimensional_figurate_numbers.hyperdodecahedral_numbers
multidimensional_figurate_numbers.polydodecahedron_numbers = multidimensional_figurate_numbers.hyperdodecahedral_numbers

function multidimensional_figurate_numbers.polyoctahedral_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield(delta ^ 2 * (3 * delta ^ 2 - 4 * delta + 2))
    end
  end)
end

multidimensional_figurate_numbers.icositetrachoron_numbers = multidimensional_figurate_numbers.polyoctahedral_numbers
multidimensional_figurate_numbers.octaplex_numbers = multidimensional_figurate_numbers.polyoctahedral_numbers
multidimensional_figurate_numbers.hyperdiamond_numbers = multidimensional_figurate_numbers.polyoctahedral_numbers

function multidimensional_figurate_numbers.four_dimensional_hyperoctahedron_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield(delta ^ 2 * (delta ^ 2 + 2) / 3)
    end
  end)
end

function multidimensional_figurate_numbers.five_dimensional_hyperoctahedron_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield(delta * (2 * delta ^ 4 + 10 * delta ^ 2 + 3) / 15)
    end
  end)
end

function multidimensional_figurate_numbers.six_dimensional_hyperoctahedron_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield(delta ^ 2 * (2 * delta ^ 4 + 20 * delta ^ 2 + 23) / 45)
    end
  end)
end

function multidimensional_figurate_numbers.seven_dimensional_hyperoctahedron_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((4 * delta ^ 6 + 70 * delta ^ 4 + 196 * delta ^ 2 + 45) * delta / 315)
    end
  end)
end

function multidimensional_figurate_numbers.eight_dimensional_hyperoctahedron_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((delta ^ 6 + 28 * delta ^ 4 + 154 * delta ^ 2 + 132) * delta ^ 2 / 315)
    end
  end)
end

function multidimensional_figurate_numbers.nine_dimensional_hyperoctahedron_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((2 * delta ^ 8 + 84 * delta ^ 6 + 798 * delta ^ 4 + 1636 * delta ^ 2 + 315) * delta / 2835)
    end
  end)
end

function multidimensional_figurate_numbers.ten_dimensional_hyperoctahedron_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((2 * delta ^ 8 + 120 * delta ^ 6 + 1806 * delta ^ 4 + 7180 * delta ^ 2 + 5067) * delta ^ 2 / 14175)
    end
  end)
end

function multidimensional_figurate_numbers.k_dimensional_hyperoctahedron_numbers(k)
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      local a = 0
      for i = 0, k - 1 do
        a = a + binomial_coefficient(k - 1, i) * (rising_factorial(delta - i, k) / factorial_iter(k))
      end
      coroutine.yield(a)
    end
  end)
end

multidimensional_figurate_numbers.k_cross_polytope_numbers = multidimensional_figurate_numbers
    .k_dimensional_hyperoctahedron_numbers

function multidimensional_figurate_numbers.four_dimensional_mgonal_pyramidal_numbers(m)
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((delta * (delta + 1) * (delta + 2) * ((m - 2) * delta - m + 6)) / 24)
    end
  end)
end

multidimensional_figurate_numbers.mgonal_pyramidal_numbers_of_the_second_order = multidimensional_figurate_numbers
    .four_dimensional_mgonal_pyramidal_numbers

function multidimensional_figurate_numbers.four_dimensional_square_pyramidal_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((delta * (delta + 1) * (delta + 2) * ((4 - 2) * delta - 4 + 6)) / 24)
    end
  end)
end

function multidimensional_figurate_numbers.four_dimensional_pentagonal_pyramidal_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((delta * (delta + 1) * (delta + 2) * ((5 - 2) * delta - 5 + 6)) / 24)
    end
  end)
end

function multidimensional_figurate_numbers.four_dimensional_hexagonal_pyramidal_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((delta * (delta + 1) * (delta + 2) * ((6 - 2) * delta - 6 + 6)) / 24)
    end
  end)
end

function multidimensional_figurate_numbers.four_dimensional_heptagonal_pyramidal_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((delta * (delta + 1) * (delta + 2) * ((7 - 2) * delta - 7 + 6)) / 24)
    end
  end)
end

function multidimensional_figurate_numbers.four_dimensional_octagonal_pyramidal_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((delta * (delta + 1) * (delta + 2) * ((8 - 2) * delta - 8 + 6)) / 24)
    end
  end)
end

function multidimensional_figurate_numbers.four_dimensional_nonagonal_pyramidal_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((delta * (delta + 1) * (delta + 2) * ((9 - 2) * delta - 9 + 6)) / 24)
    end
  end)
end

function multidimensional_figurate_numbers.four_dimensional_decagonal_pyramidal_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((delta * (delta + 1) * (delta + 2) * ((10 - 2) * delta - 10 + 6)) / 24)
    end
  end)
end

function multidimensional_figurate_numbers.four_dimensional_hendecagonal_pyramidal_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((delta * (delta + 1) * (delta + 2) * ((11 - 2) * delta - 11 + 6)) / 24)
    end
  end)
end

function multidimensional_figurate_numbers.four_dimensional_dodecagonal_pyramidal_numbers()
  return coroutine.wrap(function()
    for delta = 1, math.huge do
      coroutine.yield((delta * (delta + 1) * (delta + 2) * ((12 - 2) * delta - 12 + 6)) / 24)
    end
  end)
end

return multidimensional_figurate_numbers
