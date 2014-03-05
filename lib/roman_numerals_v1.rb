def roman_numerals(number) 
  numeral_letters = ""
  while (number > 0)
    if(number >= 1000)
      numeral_letters += "M"
      number -= 1000
    elsif (number >500= )
      numeral_letters += "D"
      number -= 500  
    elsif (number >= 100)
      if (numeral_letters.length < 3 || numeral_letters[-3,3] != "CCC")
        numeral_letters += "C"
        number -= 100
      else
        if (numeral_letters[-4,1] == "D")
          if(numeral_letters.length < 5)
            numeral_letters = "CM"
            number -= 100
          else
            numeral_letters = numeral_letters[0,numeral_letters.length - 4] + "CM"
            number -= 100
          end
        else 
          if(numeral_letters.length < 4)
            numeral_letters = "CD"
            number -= 100
          else
            numeral_letters = numeral_letters[0,numeral_letters.length - 3] + "CD"
            number -= 100
          end
        end
      end      
    elsif (number >= 50)
      numeral_letters += "L"
      number -= 50
    elsif (number >= 10)
      if (numeral_letters.length < 3 || numeral_letters[-3,3] != "XXX")
        numeral_letters += "X"
        number -= 10
      else
        if (numeral_letters[-4,1] == "L")
          if(numeral_letters.length < 5)
            numeral_letters = "XC"
            number -= 10
          else
            numeral_letters = numeral_letters[0,numeral_letters.length - 4] + "XC"
            number -= 10
          end
        else 
          if(numeral_letters.length < 4)
            numeral_letters = "XL"
            number -= 10
          else
            numeral_letters = numeral_letters[0,numeral_letters.length - 3] + "XL"
            number -= 10
          end
        end
      end      
    elsif (number >= 5)
      numeral_letters += "V"
      number -= 5
    else 
      if (numeral_letters.length < 3 || numeral_letters[-3,3] != "III")
        numeral_letters += "I"
        number -= 1
      else
        if (numeral_letters[-4,1] == "V")
          if(numeral_letters.length < 5)
            numeral_letters = "IX"
            number -= 1
          else
            numeral_letters = numeral_letters[0,numeral_letters.length - 4] + "IX"
            number -= 1
          end
        else 
          if(numeral_letters.length < 4)
            numeral_letters = "IV"
            number -= 1
          else
            numeral_letters = numeral_letters[0,numeral_letters.length - 3] + "IV"
            number -= 1
          end
        end
      end
    end
  end
  numeral_letters
end
