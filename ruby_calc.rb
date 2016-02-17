#variables
Calc_intro = "----Welcome to the Ruby Calculator----\nWhat is the first number"
Which_operator = 'which operator would you like to use? (+ - * /)'
Second_number = "What is the second number you would like to use?"
@operator_array = ["+", "-", "*", "/"]
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
    @first_num = gets.strip.to_i
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
  @second_num = gets.strip.to_i
  calculator
end

def calculator
  puts "Calculating..." 
  calc_answer
  puts "the result of #{@first_num} #{@operator_in} #{@second_num} is #{@answer}"
end

main_page
