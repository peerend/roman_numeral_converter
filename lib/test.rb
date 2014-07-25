  ones = {0=>"", 1=>"I", 2=>"II", 3=>"III", 4=>"IV", 5=>"V", 6=>"VI", 7=>"VII", 8=>"VIII", 9=>"IX"}
  tens = {0=>"", 1=>'X', 2=>"XX", 3=>"XXX", 4=>"XL", 5=>"L", 6=>"LX", 7=>"LXX", 8=>"LXXX", 9 =>"XC"}
  hund = {0=>"", 1=>'C', 2=>"CC", 3=>"CCC", 4=>"CD", 5=>"D", 6=>"DC", 7=>"DCC", 8=>"DCCC", 9 =>"CM"}
  thou = {0=>"", 1=>'M', 2=>"MM", 3=>"MMM"}

   ones.invert
   tens.invert
   hund.invert
   thou.invert


  roman_num = "MMMXXIX"
  roman_num_array = roman_num.split("")
  roman_value = {"I"=>1, "V"=>5, "X"=>10}

  sum =0
  sub_sum =0
  sub2 = {["I", "V"] => -2, ["I", "X"] => -2, ["X", "L"] => -20, ["X", "C"]=>-20}
  #sub2 = ["I", "V"]
  roman_num_array.each do |x|
    sum += roman_value[x]
  end
  sum

roman_num_array.each_cons(2) do |x|
  sub2.each do |y, z|
    if x == y
      sub_sum -= z
    end
  end
end
  sub_sum
  p sum - sub_sum

  #roman_num_array.each_cons(2){|a| p a}

  # sub2 = ["I", "V"]
  # roman_num_array.each do |x|
  #   sum += roman_value[x]
  # end
  # roman_num_array.each_cons(2) do |x|
  #   if x == sub2
  #     sum -= 2
  #   end
  # end

