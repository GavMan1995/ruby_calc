#variables
Calc_intro = "----Welcome to the Ruby Calculator----\nWhat is the first number"
Which_operator = 'which operator would you like to use? (+ - * /)'
Second_number = "What is the second number you would like to use?"
@operator_array = ["+", "-", "*", "/"]

#========MAIN PAGE===========
def main_page
    puts Calc_intro
    @first_num = gets.strip.to_i
    operator
end

#========WHICH OPERATOR==========
def operator
  puts Which_operator
  @operator_in = gets.strip.to_sym
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
  @second_num = gets.strip.to_i
  calculator
end

def calculator

  puts "Calculating..."
  puts "the results of #{@first_num} #{@operator_in} #{@second_num} is"
end

main_page
