#variables
Calc_intro = "----Welcome to the Ruby Calculator----\nWhat is the first number"
Which_operator = 'which operator would you like to use? (+ - * /)'
Second_number = "What is the second number you would like to use?"
@operator_array = ["+", "-", "*", "/"]

#==========Calculator Answer Function==============
def calc_answer
  case @operator_in
    when "+"
      @answer = @first_num + @second_num
    when "-"
      @answer = @first_num - @second_num
    when "*"
      @answer = @first_num * @second_num
    when "/"
      @answer = @first_num / @second_num
    else
      puts "Try Again"
  end
end

#========MAIN PAGE===========
def main_page
    puts Calc_intro
    @first_num = gets.strip.to_f
    operator
end

#========WHICH OPERATOR==========
def operator
  puts Which_operator
  @operator_in = gets.strip
  if_operator(@operator_in)
end

def if_operator(operator_input)
  if @operator_array.include? operator_input
    second
  else
    puts 'not a valid operator (+ - * /)'
    operator
  end
end

#==========SECOND NUMBER===========
def second
  puts Second_number
  @second_num = gets.strip.to_f
  calculator
end

def continue
  puts "1. Continue\n2. Exit"
  continue_var = gets.strip.to_i
  case continue_var
  when 1
    print"choose again "
    operator
  when 2
    puts "thankyou come again"
  end
end

#============prints out calculator answer===============
def calculator
  puts "Calculating..."
  calc_answer
  puts "the result of #{@first_num} #{@operator_in} #{@second_num} is #{@answer}"
  @first_num = @answer
  continue
end

main_page
