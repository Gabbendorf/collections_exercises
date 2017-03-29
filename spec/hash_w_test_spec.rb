require_relative '../lib/hash_w_test'

RSpec.describe Hashes do

  let(:hashes) {Hashes.new}

  it "has an hash with Jonathan, Erik, and Anil as keys" do
    expect(hashes.users.has_key?("Jonathan")).to eq true
    expect(hashes.users.has_key?("Erik")).to eq true
    expect(hashes.users.has_key?("Anil")).to eq true
  end

  it "has an nested hash for all users with :favorite_numbers as key" do
    expect(hashes.users["Jonathan"].has_key?(:favorite_numbers)).to eq true
    expect(hashes.users["Erik"].has_key?(:favorite_numbers)).to eq true
    expect(hashes.users["Anil"].has_key?(:favorite_numbers)).to eq true
  end

  it "returns 7 favorite numbers for Erik" do
    expect(hashes.users["Erik"][:favorite_numbers].length).to eq(7)
  end

  it "returns Erik's smallest number" do
    expect(hashes.get_smallest_number_of_Erik(hashes.users)).to eq(1)
  end

  it "returns Anil's even numbers from his favorite" do
    expect(hashes.get_anils_even_favorite_numbers(hashes.users)).to eq([12, 14])
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
