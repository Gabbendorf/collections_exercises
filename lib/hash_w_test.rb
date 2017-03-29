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
  def get_smallest_number_of_Erik(all_users)
    numbers = users["Erik"][:favorite_numbers]
    smallest_number = numbers[0]
      numbers.each do |n|
        if n < smallest_number
          smallest_number = n
        end
      end
    smallest_number
  end

  # How would you return an array of Anil's favorite numbers that are also even?
  def get_anils_even_favorite_numbers(all_users)
    numbers = users["Anil"][:favorite_numbers]
    even_numbers = []
      numbers.each do |n|
        if n % 2 == 0
          even_numbers.push(n)
        end
      end
    even_numbers
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
