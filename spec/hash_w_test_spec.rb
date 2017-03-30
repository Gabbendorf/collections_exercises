require_relative '../lib/hash_w_test'

RSpec.describe Hashes do

  let(:hashes) {Hashes.new}

  it "returns the user's smallest number" do
    expect(hashes.get_smallest_number_of(hashes.users["Erik"][:favorite_numbers])).to eq(1)
    expect(hashes.get_smallest_number_of(hashes.users["Jonathan"][:favorite_numbers])).to eq(12)
    expect(hashes.get_smallest_number_of(hashes.users["Anil"][:favorite_numbers])).to eq(12)
  end

  it "returns even favorite numbers" do
    expect(hashes.get_even_favorite_numbers_of(hashes.users["Anil"][:favorite_numbers])).to eq([12, 14])
    expect(hashes.get_even_favorite_numbers_of(hashes.users["Jonathan"][:favorite_numbers])).to eq([12, 42])
    expect(hashes.get_even_favorite_numbers_of(hashes.users["Erik"][:favorite_numbers])).to eq([24, 8, 12, 36])
  end

  it "returns an array with all favorite numbers in 'users'" do
    expect(hashes.all_numbers_of(hashes.users)).to eq([12, 42, 75, 24, 8, 7, 1, 12, 9, 36, 12, 14, 85])
  end

  it "returns an hash with all numbers as keys and their occurence as value" do
    expect(hashes.occurences(hashes.all_numbers_of(hashes.users))).to eq({12 => 3, 42 => 1, 75 => 1, 24 => 1, 8 => 1, 7 => 1, 1 => 1, 9 => 1, 36 => 1, 14 => 1, 85 => 1})
  end

  it "returns numbers with occurence bigger than 1" do
    expect(hashes.get_common_favorite_numbers_from(hashes.occurences(hashes.all_numbers_of(hashes.users)))).to eq([12])
  end

  it "returns an array containing all users' favorite numbers, sorted and not duplicated" do
    expect(hashes.sorted_and_unique_favorite(hashes.occurences(hashes.all_numbers_of(hashes.users)))).to eq([1, 7, 8, 9, 12, 14, 24, 36, 42, 75, 85])
  end

end
