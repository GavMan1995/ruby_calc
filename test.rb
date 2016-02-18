@math = []

def main_page
  puts "type equation, include spaces"
  equation = gets.strip
  @math << equation
  split_equation
end

def split_equation
  values = @math.split(" ")
    @first_num = values[0]
    @operator_in = values[1]
    @second_num = values[2]
    hi
end

def hi
  print @first_num.to_i
  print @operator_in.to_sym
  print @second_num.to_i
end

main_page
