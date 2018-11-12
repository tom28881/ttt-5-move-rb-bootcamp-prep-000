require_relative "../lib/move.rb"

describe input_to_index("1" - "9") do

  it 'converts a user_input to an integer' do
    user_input = "1"
    converted_input = input_to_index(user_input)
    
    expect(converted_input).to be_a(Integer)
  end

  it 'subtracts 1 from the user_input' do
    user_input = "6"
    converted_input = input_to_index(user_input)

    expect(converted_input).to_i(5)
  end

  it 'returns -1 for strings without integers' do
    user_input = "invalid"
    converted_input = input_to_index(user_input)
    
    expect(converted_input).to be(-1)
  end

end
