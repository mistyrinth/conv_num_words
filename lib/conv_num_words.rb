# frozen_string_literal: true

require "conv_num_words/version"

module ConvNumWords
  class Error < StandardError; end
end

# Extension of Numeric class
class Numeric
  def to_w
    case self
    when 0
      "zero"
    when 1
      "one"
    when 2
      "two"
    when 3
      "three"
    when 4
      "four"
    when 5
      "five"
    when 6
      "six"
    when 7
      "seven"
    when 8
      "eight"
    when 9
      "nine"
    when 10
      "ten"
    when 11
      "eleven"
    when 12
      "twelve"
    when 13
      "thirteen"
    when 14
      "fourteen"
    when 15
      "fifteen"
    when 16
      "sixteen"
    when 17
      "seventeen"
    when 18
      "eighteen"
    when 19
      "nineteen"
    when 20
      "twenty"
    when 30
      "thirty"
    when 40
      "forty"
    when 50
      "fifty"
    when 60
      "sixty"
    when 70
      "seventy"
    when 80
      "eighty"
    when 90
      "ninety"
    when 21 .. 99
      tens_digit = (self / 10).to_i
      ones_digit = self - tens_digit * 10
      (tens_digit * 10).to_w + "-" + ones_digit.to_w
    when 100 .. 999
      hundreds_digit = (self / 100).to_i
      under_digit = self - hundreds_digit * 100
      if self % 100 == 0
        hundreds_digit.to_w + " hundred"
      else
        hundreds_digit.to_w + " hundred " + under_digit.to_w
      end
    when 1000 .. 999999
      thousands_digit = (self / 1000).to_i
      under_digit = self - thousands_digit * 1000
      if self % 1000 == 0
        thousands_digit.to_w + " thousand"
      else
        thousands_digit.to_w + " thousand " + under_digit.to_w
      end
    else
      self.to_s
    end
  end
end
