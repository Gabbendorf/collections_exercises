class Hashes

  def users
    {
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
  end

# How would you return the smallest of Erik's favorite numbers?
  def get_smallest_number_of(user)
    users_numbers = user
    smallest_number = users_numbers[0]
      users_numbers.each do |number|
        if number < smallest_number
          smallest_number = number
        end
      end
      # alternative solution (?)
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
  def all_numbers_of(all_users)
    users["Jonathan"][:favorite_numbers] + users["Erik"][:favorite_numbers] + users["Anil"][:favorite_numbers]
  end

  def occurences(all_numbers)
    occurences = Hash.new(0)
    all_numbers.each do |number|
      occurences[number] += 1
    end
    occurences
  end

  def get_common_favorite_numbers_from(hash)
    common_numbers = []
    hash.each do |number, occurence|
      if occurence == users.length
      common_numbers << number
      end
    end
    common_numbers
  end

  # How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
  def sorted_and_unique_favorite(hash)
    no_duplicates = []
    hash.each do |key, value|
      no_duplicates << key
    end
    no_duplicates.sort
  end

end
