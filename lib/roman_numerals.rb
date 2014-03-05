def roman_numerals(number) 
  numeral_letters = ""
  new_letter = ""
  roman_pairs = {1000 => "M", 
                  900 => "CM",
                  500 => "D",
                  400 => "CD",
                  100 => "C",
                  90 => "XC",
                  50 => "L",
                  40 => "XL",
                  10 => "X",
                  9 => "IX",
                  5 => "V",
                  4 => "IV",
                  1 => "I"}
  while (number > 0)
    biggest_pair = roman_pairs.select{|k,v| number >= k}.max_by{|k,v| k}
    numeral_letters = add_letter(numeral_letters, biggest_pair[1])
    number = number - biggest_pair[0]
  end
  numeral_letters
end

def add_letter(numeral_letters, new_letter)
  numeral_letters += new_letter
end
