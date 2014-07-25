  numerals = {}
  numerals = {1=>"I", 5=>"V", 10=>"X", 50=>"L", 100=>"C", 500=>"D", 1000=>"M"}
  tens = {1 =>'X', 2=>"XX", 3=>"XXX", 4=>"XL", 5=>"L", 6=>"LX", 7=>"LXX", 8=>"LXXX", 9 =>"XC"}
  numerals[5]

number = 63
number_in = number.to_s.split('').map {|digit| digit.to_i}
 p number_in
 p num_length = number_in.length

 p tens[number_in[0]]
