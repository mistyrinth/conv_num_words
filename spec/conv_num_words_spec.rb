# frozen_string_literal: true

require "conv_num_words"

RSpec.describe ConvNumWords do
  it "has a version number" do
    expect(ConvNumWords::VERSION).not_to be nil
  end
end

RSpec.describe Numeric do
  it "convert number into words" do
    expect(0.to_word).to eq "zero"
    expect(1.to_word).to eq "one"
    expect(10.to_word).to eq "ten"
    expect(21.to_word).to eq "twenty-one"
    expect(30.to_word).to eq "thirty"
    expect(40.to_word).to eq "forty"
    expect(50.to_word).to eq "fifty"
    expect(60.to_word).to eq "sixty"
    expect(70.to_word).to eq "seventy"
    expect(100.to_word).to eq "one hundred"
    expect(102.to_word).to eq "one hundred two"
    expect(183.to_word).to eq "one hundred eighty-three"
    expect(400.to_word).to eq "four hundred"
    expect(1000.to_word).to eq "one thousand"
    expect(5006.to_word).to eq "five thousand six"
    expect(7098.to_word).to eq "seven thousand ninety-eight"
    expect(9100.to_word).to eq "nine thousand one hundred"
    expect(9999.to_word).to eq "nine thousand nine hundred ninety-nine"
    expect(99999.to_word).to eq "ninety-nine thousand nine hundred ninety-nine"
    expect(999999.to_word).to eq "nine hundred ninety-nine thousand nine hundred ninety-nine"
  end
end
