space = "***"
# D. Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}
# 1. How would you access Jonathan's Twitter handle (i.e. the string "tronathan")?
puts users["Jonathan"][:twitter]
puts space
# 2. How would you add the number 7 to Erik's favorite numbers?
users["Erik"][:favorite_numbers] << 7
puts users["Erik"][:favorite_numbers]
# 3. How would you add yourself to the users hash?
puts space
users["Gabriella"] = 0
puts users
# 4. How would you return the array of Erik's favorite numbers?
puts space
puts users["Erik"][:favorite_numbers]
puts space
