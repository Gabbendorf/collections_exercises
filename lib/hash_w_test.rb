class Hashes

  USERS =  {
          "Jonathan" => {
            :twitter => "tronathan",
            :favorite_numbers => [12, 42, 75],
          },
          "Erik" => {
            :twitter => "sferik",
            :favorite_numbers => [24, 8, 7, 1, 12, 9, 36],
          },
          "Anil" => {
            :twitter => "bridgpal",
            :favorite_numbers => [12, 14, 85],
          },
          }

# How would you return the smallest of Erik's favorite numbers?
  def get_smallest_number_of(user)
    users_numbers = user
    smallest_number = users_numbers[0]
      users_numbers.each do |number|
        if number < smallest_number
          smallest_number = number
        end
      end
      # ALTERNATIVE SOLUTION(?)
      # numbers.find_all { |number|
      #   if number < smallest_number
      #     smallest_number = number
      #   end
      # }
    smallest_number
  end

  # How would you return an array of Anil's favorite numbers that are also even?
  def get_even_favorite_numbers_of(user)
    user.find_all { |number| number % 2 == 0 }
  end

  # How would you return an array of the favorite numbers common to all users?
  def get_all_numbers
    arrays_of_numbers = USERS.map {|key, value| value[:favorite_numbers] }
    arrays_of_numbers.inject { |sum, array| sum + array}
  end

  def occurences
    get_all_numbers.inject(Hash.new(0)) do |hash, number|
      hash[number] += 1
      hash
    end
  end

  def get_common_favorite_numbers
    common_numbers = []
    occurences.each do |number, occurence|
      if occurence == USERS.length
      common_numbers << number
      end
    end
    common_numbers
  end

  # How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
  def sorted_and_unique_favorite
    occurences.map {|key, value| key}.sort
  end

end
