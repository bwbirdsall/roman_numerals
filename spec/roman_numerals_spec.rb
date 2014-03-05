require('rspec')
require('roman_numerals')

describe('roman_numerals') do
  it('returns I for 1') do
    roman_numerals(1).should(eq("I"))
  end
  it('returns III for 3') do
    roman_numerals(3).should(eq("III"))
  end
  it('returns V for 5') do
    roman_numerals(5).should(eq("V"))
  end
  it('returns VII for 7') do
    roman_numerals(7).should(eq("VII"))
  end
  it('returns XI for 11') do
    roman_numerals(11).should(eq("XI"))
  end
  it('returns LXVI for 66') do
    roman_numerals(66).should(eq("LXVI"))
  end
  it('returns MMDCCLXXVI for 2776') do
    roman_numerals(2776).should(eq("MMDCCLXXVI"))
  end
  it('returns IX for 9') do
    roman_numerals(9).should(eq("IX"))
  end
  it('returns MCCIX for 1209') do
    roman_numerals(1209).should(eq("MCCIX"))
  end
  it('returns IV for 4') do
    roman_numerals(4).should(eq("IV"))
  end
  it('returns MCCCIV for 1304') do
    roman_numerals(1304).should(eq("MCCCIV"))
  end
  it('returns MCCCI for 1301') do
    roman_numerals(1301).should(eq("MCCCI"))
  end
  it('returns CCXLIX for 249') do
    roman_numerals(249).should(eq("CCXLIX"))
  end
  it('returns MCMXLIX for 1949') do
    roman_numerals(1949).should(eq("MCMXLIX"))
  end
  it('returns MMCDVI for 2406') do
    roman_numerals(2406).should(eq("MMCDVI"))
  end
 end
