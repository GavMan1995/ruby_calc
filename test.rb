puts "Enter your equation"
puts "-format x + y-"
input = gets.chomp
values = input.split(" ")

@num1 = values[0]
@operator = values[1]
@num2 = values[2]

def calc_answer
  case @operator
    when "+"
      @answer = @num1.to_i + @num2.to_i
    when "-"
      @answer = @num1.to_i - @num2.to_i
    when "*"
      @answer = @num1.to_i * @num2.to_i
    when "/"
      @answer = @num1.to_i / @num2.to_i
    else
      puts "Try Again"
  end
end 

calc_answer
	puts @answer
 