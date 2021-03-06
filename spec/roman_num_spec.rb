require ("rspec")
require ("roman_num")

describe("roman_num") do
  it("convert 5 to roman V") do
    expect(roman_num(5)).to(eq("V"))
  end
  it("convert 4 to roman IV") do
    expect(roman_num(4)).to(eq("IV"))
  end
  it("converts numerals between 1 and 99") do
    expect(roman_num(42)).to(eq("XLII"))
  end
  it("converts numerals between 1 and 999") do
    expect(roman_num(567)).to(eq("DLXVII"))
  end
  it("converts numerals between 1 and 99") do
    expect(roman_num(40)).to(eq("XL"))
  end
  it("converts numerals between 1 and 3999") do
    expect(roman_num(3560)).to(eq("MMMDLX"))
  end
end
describe("rev_roman_num") do
  it("converts roman numerals between 1 and 3999 to base 10") do
    expect(rev_roman_num("MMMI")).to(eq(3001))
  end
  it("converts roman numerals between 1 and 3999 to base 10") do
    expect(rev_roman_num("MCMXCIV")).to(eq(1994))
  end
end
