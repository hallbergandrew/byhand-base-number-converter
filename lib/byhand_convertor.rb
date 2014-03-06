def binary(string)
  final_number = 0
  numbers = string.reverse.split("").collect {|x| x.to_i} 

  numbers.each_with_index do |number, index|
    final_number = (number * 2) ** index
  end
   final_number
end

def trinary(string)
  final_number = 0
  numbers = string.reverse.split("").collect {|x| x.to_i} 

  numbers.each_with_index do |number, index|
    final_number = (number * 3) ** index
  end
   final_number
end

def hexidecimal(string)
  final_number = 0
  temp_number = 0
  numbers = string.upcase.reverse.split("")
  numbers.each do |number|
    if /[ABCDEF]/.match(number)
      number.gsub!(/[ABCDEF]/, "A" => "10", "B" => "11", "C" => "12", "D" => "13", "E" => "14", "F" => "15")
    end
  end
  numbers.collect! { |x| x.to_i }
  numbers.each_with_index do |number, index|
    final_number += number * 16 ** index
  end
   final_number
end
