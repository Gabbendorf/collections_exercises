require_relative '../lib/hash_w_test'

RSpec.describe Hashes do

  let(:hashes) {Hashes.new}

  it "returns the user's smallest number" do
    expect(hashes.get_smallest_number_of(Hashes::USERS["Erik"][:favorite_numbers])).to eq(1)
    expect(hashes.get_smallest_number_of(Hashes::USERS["Jonathan"][:favorite_numbers])).to eq(12)
    expect(hashes.get_smallest_number_of(Hashes::USERS["Anil"][:favorite_numbers])).to eq(12)
  end

  it "returns even favorite numbers" do
    expect(hashes.get_even_favorite_numbers_of(Hashes::USERS["Anil"][:favorite_numbers])).to eq([12, 14, 36])
    expect(hashes.get_even_favorite_numbers_of(Hashes::USERS["Jonathan"][:favorite_numbers])).to eq([12, 42, 36])
    expect(hashes.get_even_favorite_numbers_of(Hashes::USERS["Erik"][:favorite_numbers])).to eq([24, 8, 12, 36])
  end

  it "returns an array with all favorite numbers of all users'" do
    expect(hashes.get_all_numbers).to eq([12, 42, 75, 36, 24, 8, 7, 1, 12, 9, 36, 12, 14, 85, 36])
  end

  it "returns an hash with all numbers as keys and their occurence as value" do
    expect(hashes.occurences).to eq({12 => 3, 42 => 1, 75 => 1, 24 => 1, 8 => 1, 7 => 1, 1 => 1, 9 => 1, 36 => 3, 14 => 1, 85 => 1})
  end

  it "returns numbers in common with all users" do
    expect(hashes.get_common_favorite_numbers).to eq([12, 36])
  end

  it "returns an array containing all users' favorite numbers, sorted and not duplicated" do
    expect(hashes.sorted_and_unique_favorite_numbers).to eq([1, 7, 8, 9, 12, 14, 24, 36, 42, 75, 85])
  end

end
