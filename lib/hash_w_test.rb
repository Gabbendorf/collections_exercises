class Hashes

  USERS =  {
          "Jonathan" => {
            :twitter => "tronathan",
            :favorite_numbers => [12, 42, 75, 36],
          },
          "Erik" => {
            :twitter => "sferik",
            :favorite_numbers => [24, 8, 7, 1, 12, 9, 36],
          },
          "Anil" => {
            :twitter => "bridgpal",
            :favorite_numbers => [12, 14, 85, 36],
          },
          }

# How would you return the smallest of Erik's favorite numbers?
  def get_smallest_number_of(user)
    user.min
  end

  # How would you return an array of Anil's favorite numbers that are also even?
  def get_even_favorite_numbers_of(user)
    user.find_all { |number| number % 2 == 0 }
  end

  # How would you return an array of the favorite numbers common to all users?
  def get_common_favorite_numbers
    pairs = occurences.select {|key, value| value == USERS.length}
    pairs.keys
  end

  def occurences
    get_all_numbers.inject(Hash.new(0)) do |hash, number|
      hash[number] += 1
      hash
    end
  end

  def get_all_numbers
    arrays_of_numbers = USERS.map {|key, value| value[:favorite_numbers] }
    arrays_of_numbers.inject { |sum, array| sum + array}
  end

  # How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
  def sorted_and_unique_favorite_numbers
    occurences.map {|key, value| key}.sort
  end

end
